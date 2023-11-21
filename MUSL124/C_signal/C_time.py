# parser_file 用于处理c语言文件
import os
import shutil
import string
import random
import subprocess

from pycparser import parse_file, c_ast
# c_ast.py 文件下包含了抽象语法树的节点类
from pycparser.c_ast import *
import copy

# 获取当前脚本所在的目录
current_directory = os.path.dirname(os.path.abspath(__file__))
root_directory = os.path.abspath(os.path.join(current_directory, os.pardir, os.pardir))

print("current_directory:", current_directory)

# 创建文件夹
string_header_path = "signal.h"  # 使用相对路径

# 构建完整的文件路径
filename = os.path.join(current_directory, string_header_path)

# 假设 fake_lib_path 是要添加的路径
fake_lib = "pycparser/utils/fake_libc_include"

# 使用 os.path.join 将 fake_lib_path 转换为绝对路径
fake_lib_path = os.path.join(root_directory, fake_lib)

print("fake_lib_path:", fake_lib_path)
print("filename:", filename)

# 在 cpp_args 中添加 fake_lib_path
cpp_args = ['-E', f'-I{fake_lib_path}']

# 调用 parse_file 时将 cpp_args 传递给参数
ast = parse_file(filename, use_cpp=True, cpp_path='clang', cpp_args=cpp_args)

# afl_clang_fast_path = "/home/kansx/Fuzz/AFLplusplus/afl-clang-fast"

default_headers_code = ('#include <iconv.h>\n'
                        '#include <string.h>\n'
                        '#include <stdio.h>\n\n')

main_begin_code = 'int main() {\n\n\t'
main_end_coce = '\n\treturn 0;\n}'

afl_init_code = '__AFL_INIT();\n\n\t'
afl_buf_code = 'char buf[1024];\n\t'
afl_loop_begin_code = 'while (__AFL_LOOP(1000)) \n\t{\n\t'
afl_memset_code = '\tmemset(buf, 0, sizeof(buf));\n\t'
afl_read_code = '\tif (read(0, buf, sizeof(buf)) < 0) {\n\t\t\t'
afl_read_code += 'return 1;\n\t\t}\n\n\t'
afl_loop_end_code = '\n\t}\n'


def getIFCode(pt1, pt2):
    if_code = ""
    spec_body = ""
    # pt1 and pt2 have the same type and are both pointers
    # pt1 is void pointer and pt2 is not void pointer
    # pt2 is void pointer and pt1 is not void pointer
    if pt1.type_path[-1] == pt2.type_path[-1] or \
            (pt1.type_path[-1] == "void" and pt2.type_path[-1] != "void" and pt1.pointer_level !=0 and pt2.pointer_level != 0) or \
            (pt1.type_path[-1] != "void" and pt2.type_path[-1] == "void" and pt1.pointer_level !=0 and pt2.pointer_level != 0):
        lvalue_list = []
        rvalue_list = []
        lvalue_path_list = []
        rvalue_path_list = []

        for name in pt1.name_path:
            lvalue_list.append(name)
            lvalue = " -> ".join(lvalue_list)
            lvalue_path_list.append(lvalue)

        # print("lvalue_path_list: ", lvalue_path_list)

        for name in pt2.name_path:
            rvalue_list.append(name)
            rvalue = " -> ".join(rvalue_list)
            rvalue_path_list.append(rvalue)

        # print("rvalue_path_list: ", rvalue_path_list)

        if ((pt1.type_path[-1] == "void" and pt1.pointer_level == 0)
                or (pt2.type_path[-1] == "void" and pt2.pointer_level == 0))\
                or (pt1.pointer_level == 0 and pt2.pointer_level == 0):

            return if_code, "", "", spec_body

        if_code += "\n\t\tif("

        for lvalue_path in lvalue_path_list[:-1]:
            if_code += f"{lvalue_path} != NULL && "

        for rvalue_path in rvalue_path_list[:-1]:
            if_code += f"{rvalue_path} != NULL && "

        if pt1.pointer_level == pt2.pointer_level:
            if_code += f"{lvalue_path_list[-1]} == {rvalue_path_list[-1]})\n"
            spec_body = f"{lvalue_path_list[-1]} == {rvalue_path_list[-1]}"
        elif pt1.pointer_level == pt2.pointer_level + 1:
            if_code += f"*{lvalue_path_list[-1]} == {rvalue_path_list[-1]})\n"
            spec_body = f"*{lvalue_path_list[-1]} == {rvalue_path_list[-1]}"
        elif pt1.pointer_level + 1 == pt2.pointer_level:
            if_code += f"{lvalue_path_list[-1]} == *{rvalue_path_list[-1]})\n"
            spec_body = f"{lvalue_path_list[-1]} == *{rvalue_path_list[-1]}"

        return if_code, lvalue_path_list[-1], rvalue_path_list[-1], spec_body

    return if_code, "", ""


def SpecFileGenFunctionCode():
    code = "void SpecFileGeneration(const char *specification, const char *fileName, const char *funSignature)\n"
    code += "{\n"
    code += "\tFILE *file = fopen(fileName, \"r\");"
    code += "\n\tif (file) {"
    code += "\n\t\tfclose(file);"
    code += "\n\t\treturn;"
    code += "\n\t}\n"

    code += "\n\tfile = fopen(fileName, \"a\");"
    code += "\n\tif (file) {"
    code += "\n\t\tfprintf(file, \"%s\\n\", funSignature);"
    code += "\n\t\tfprintf(file, \"{\\n\");"
    code += "\n\t\tfprintf(file, \"\t%s\\n\", specification);"
    code += "\n\t\tfprintf(file, \"}\\n\");"
    code += "\n\t\tfclose(file);"
    code += "\n\t}"
    code += "\n}\n\n"

    return code


class Points_to_Information:
    def __init__(self, pointer_level, name_path, type_path):
        # Record the pointer level of the last element in the path
        self.pointer_level = pointer_level
        self.name_path = name_path
        self.type_path = type_path

typydef_names = {"FILE", "_IO_marker"}
struct_map = {}

class TypedefVisitor(c_ast.NodeVisitor):
    # def __init__(self):
    #     self.typedef_map = {}

    def visit_Typedef(self, node):
        if isinstance(node.type, c_ast.TypeDecl):
            if node.type.declname and node.name and node.type.declname in typydef_names:
                if isinstance(node.type.type, c_ast.Struct):
                    struct_info = {"fields": []}
                    for field in node.type.type.decls:
                        # Record subfield name and type
                        field_info = {"field": field.name, "type": field.type}
                        print("field name: ", field.name)
                        struct_info["fields"].append(field_info)

                    struct_map[node.type.type.name] = struct_info
                    struct_map[node.name] = struct_info

                    print("\nnode name: ", node.name)
                    print("node.type.type.name: ", node.type.type.name)


class StructVisitor(c_ast.NodeVisitor):

    def visit_Struct(self, node):
        if node.name and node.name in struct_map:
            struct_info = {"fields": []}
            for field in node.decls:
                # Record subfield name and type
                field_info = {"field": field.name, "type": field.type}
                struct_info["fields"].append(field_info)

            struct_map[node.name] = struct_info


def getPointerLevel(node_type, level):
    if isinstance(node_type, PtrDecl):
        return getPointerLevel(node_type.type, level + 1)
    else:
        return level


def ExtendStructPointer(variable_name, node, name_path, type_path, points_to_path):
    for key, value in struct_map.items():
        if key == node:
            # print(f"返回值是结构体指针: {key}")
            # print("value[fields]: ", value["fields"])
            for field in value["fields"]:
                # print(f"\t\tField Name: {field['field']},  Field Type: {field['type']}")
                # 循环查看field的类型是否是结构体指针
                if isinstance(field['type'], PtrDecl) and isinstance(field['type'].type.type, Struct) and field[
                    'type'].type.type.name in struct_map:
                    # print(f"\t\tField Name: {field['field']},  \t\tField Type: {field['type'].type.type.name}, "
                    #       f"\t\tField Type is Pointer: {isinstance(field['type'], PtrDecl)}")
                    if field['type'].type.type.name not in type_path:
                        name_path.append(field['field'])
                        type_path.append(field['type'].type.type.name)
                        pt = Points_to_Information(getPointerLevel(field['type'], 0), copy.copy(name_path),
                                                   copy.copy(type_path))
                        points_to_path[variable_name].append(pt)
                        ExtendStructPointer(variable_name, field['type'].type.type.name, name_path, type_path,
                                            points_to_path)
                        name_path.pop()
                        type_path.pop()
                    else:
                        name_path.append(field['field'])
                        type_path.append(field['type'].type.type.name)
                        pt = Points_to_Information(getPointerLevel(field['type'], 0), copy.copy(name_path),
                                                   copy.copy(type_path))
                        points_to_path[variable_name].append(pt)
                        # print(f"\t\t\tPath: {name_path}")
                        # print(f"\t\t\tPath: {type_path}")
                        name_path.pop()
                        type_path.pop()
                elif isinstance(field['type'], PtrDecl) and isinstance(field['type'].type.type, IdentifierType):
                    name_path.append(field['field'])
                    type_path.append(field['type'].type.type.names[0])
                    pt = Points_to_Information(getPointerLevel(field['type'], 0), copy.copy(name_path),
                                               copy.copy(type_path))
                    points_to_path[variable_name].append(pt)
                    # print(f"\t\tField Name: {field['field']},  \t\tField Type: {field['type'].type.type.names[0]}, "
                    #       f"\t\tField Type is Pointer: {isinstance(field['type'], PtrDecl)}")
                    # print(f"\t\t\tPath: {name_path}")
                    # print(f"\t\t\tPath: {type_path}")
                    name_path.pop()
                    type_path.pop()
                else:
                    # if field['field'] == "_IO_marker":
                    #     print("field['field']: ", field['field'])
                    # print("field['field']: ", field['field'])
                    name_path.append(field['field'])
                    type_path.append(field['type'].type.names[0])
                    pt = Points_to_Information(getPointerLevel(field['type'], 0), copy.copy(name_path),
                                               copy.copy(type_path))
                    points_to_path[variable_name].append(pt)
                    # print(f"\t\tField Name: {field['field']},  \t\tField Type: {field['type'].type.names[0]}, "
                    #       f"\t\tField Type is Pointer: {isinstance(field['type'], PtrDecl)}")
                    # print(f"\t\t\tPath: {name_path}")
                    # print(f"\t\t\tPath: {type_path}")
                    name_path.pop()
                    type_path.pop()

def getParamName(param_decl):
    if param_decl.name == None or param_decl.name == "__restrict":
        return "arg"
    else:
        return param_decl.name

def createCppsFolder():
    current_directory = os.path.dirname(os.path.abspath(__file__))
    print("current_directory:", current_directory)
    # 创建文件夹
    cpp_folder = "Cpps"
    cpp_folder_path = os.path.join(current_directory, cpp_folder)
    # print("cpp_folder_path:", cpp_folder_path)
    if not os.path.exists(cpp_folder_path):
        os.mkdir(cpp_folder_path)

    return cpp_folder_path

def isArgPointer(node_type, level):
    if isinstance(node_type, PtrDecl):
        return isArgPointer(node_type.type, level + 1)
    else:
         return node_type.type.names[0], level

def generate_random_string_with_substring():
    length = random.randint(20, 50)  # 随机生成字符串长度在20到50之间
    characters = string.ascii_letters + string.digits
    random_string = ''.join(random.choice(characters) for _ in range(length))

    substring_length = random.randint(5, 15)  # 随机生成子字符串长度在5到15之间
    start = random.randint(0, length - substring_length)
    end = start + substring_length
    substring = random_string[start:end]

    return random_string, substring


def createTestCasesinInFolder(Parms, cpp_harness_in_folder_path):

    random_string, substring = generate_random_string_with_substring();
    random_string_length = len(random_string)
    substring_length = len(substring)

    iterater = 0
    # Create 3 test cases in folder
    while iterater < 3:

        cpp_test_case_file_name = f"{cpp_harness_in_folder_path}/test_case_{iterater}.txt"

        random_string, substring = generate_random_string_with_substring();
        random_string_length = len(random_string)
        substring_length = len(substring)

        with open(cpp_test_case_file_name, "w") as cpp_test_case_file:
            cpp_test_case_file.write("")
        for i, param_decl in enumerate(Parms):
            argInfo = isArgPointer(param_decl.type, 0)
            if argInfo[0] == "int":
                if i == 0:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random_string_length}\n")
                elif i == 1:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{substring_length}\n")
                else:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random.randint(0, random_string_length)}\n")
            if argInfo[0] == "unsigned" or argInfo[0] == "unsigned int":
                if i == 0:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random_string_length}\n")
                elif i == 1:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{substring_length}\n")
                else:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random.randint(0, random_string_length)}\n")
            elif argInfo[0] == "size_t":
                if i == 0:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random_string_length}\n")
                elif i == 1:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{substring_length}\n")
                else:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random.randint(0, random_string_length)}\n")
            elif argInfo[0] == "long":
                if i == 0:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random_string_length}\n")
                elif i == 1:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{substring_length}\n")
                else:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random.randint(0, random_string_length)}\n")

            elif argInfo[0] == "char":
                if argInfo[1] > 0:
                    if i == 0:
                        with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                            cpp_test_case_file.write(f"{random_string}\n")
                    else:
                        with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                            cpp_test_case_file.write(f"{substring}\n")
                else:
                    with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                        cpp_test_case_file.write(f"{random_string[0]}\n")
            elif argInfo[0] == "void":
                if argInfo[1] > 0:
                    if i == 0:
                        with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                            cpp_test_case_file.write(f"{random_string}\n")
                    else:
                        with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                            cpp_test_case_file.write(f"{substring}\n")
            elif argInfo[0] == "FILE":
                if argInfo[1] > 0:
                    if i == 0:
                        with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                            cpp_test_case_file.write(f"{random_string}\n")
                    else:
                        with open(cpp_test_case_file_name, "a") as cpp_test_case_file:
                            cpp_test_case_file.write(f"{substring}\n")
        iterater += 1

excluded_functions = ["cookie_read_function_t", "cookie_write_function_t", "cookie_seek_function_t", "cookie_close_function_t", "fgetpos", "fopencookie"]
class FuncDeclVisitor(NodeVisitor):
    def __init__(self):
        self.visit_count = 0

    # Check if the parameter is a pointer, if it is, return the pointer level
    def isArgPointer(self, node_type, level):
        if isinstance(node_type, PtrDecl):
            return self.isArgPointer(node_type.type, level + 1)
        else:
            return node_type.type.names[0], level

    # Check if the function is a pointer, if it is, return the pointer level
    def isFuncPointer(self, node_type, level):
        if isinstance(node_type, PtrDecl):
            return self.isFuncPointer(node_type.type, level + 1)
        else:
            return node_type.declname, node_type.type.names[0], level

    # Iterate through the AST and print the function information
    def visit_FuncDecl(self, node):

        cpp_folder_path = createCppsFolder()

        # 如果一个函数的返回值和参赛的类型都是原始类型， 那么就不用生成harnesss了
        harnessCreate = False

        funcNameInfo = self.isFuncPointer(node.type, 0)

        if funcNameInfo[0] in excluded_functions:
            return


        if funcNameInfo[2] > 0:
            harnessCreate = True
        print("function name: %s" % funcNameInfo[0])

        if funcNameInfo[0] == "fclose":
            print("funcName: ", funcNameInfo[0])

        points_to_path = {}
        qual = ""
        if (isinstance(node.type, PtrDecl) and node.type.type.quals.__len__() > 0):
            qual = node.type.type.quals[0]
        elif (isinstance(node.type, TypeDecl) and node.type.quals.__len__() > 0):
            qual = node.type.quals[0]

        ######################## function call  ########################
        # cpp_code = f'#include <iostream>\n#include <fstream>\n#include <string>\n#include "cJSON.h"\n\nint main() {{\n\n\t'
        cpp_code = default_headers_code
        cpp_code += SpecFileGenFunctionCode()
        cpp_code += main_begin_code
        cpp_code += afl_buf_code
        cpp_code += afl_loop_begin_code
        cpp_code += afl_memset_code
        cpp_code += afl_read_code

        # if funcNameInfo[0] == "free":
        #     print("funcName: ", funcNameInfo[0])

        buf = "buf"
        for i, param_decl in enumerate(node.args.params):
            ################### 参数初始化 ###################
            argInfo = self.isArgPointer(param_decl.type, 0)

            if argInfo[1] > 0:
                harnessCreate = True

            if argInfo[0] == "int":
                cpp_code += f"\tint "
                if argInfo[1] > 0:
                    for j in range(argInfo[1]):
                        cpp_code += "*"
                cpp_code += f"{getParamName(param_decl) + str(i)};\n\t"
                cpp_code += f"\tsscanf(strtok(NULL, \"\\n\"), \"%d\", &{getParamName(param_decl) + str(i)});\n\n\t"

            if argInfo[0] == "unsigned" or argInfo[0] == "unsigned int":
                cpp_code += f"\tunsigned int "
                if argInfo[1] > 0:
                    for j in range(argInfo[1]):
                        cpp_code += "*"
                cpp_code += f"{getParamName(param_decl) + str(i)};\n\t"
                cpp_code += f"\tsscanf(strtok(NULL, \"\\n\"), \"%d\", &{getParamName(param_decl) + str(i)});\n\n\t"

            elif argInfo[0] == "size_t":
                cpp_code += f"\tunsigned long "
                if argInfo[1] > 0:
                    for j in range(argInfo[1]):
                        cpp_code += "*"
                cpp_code += f"{getParamName(param_decl) + str(i)};\n\t"
                cpp_code += f"\tsscanf(strtok(NULL, \"\\n\"), \"%lu\", &{getParamName(param_decl) + str(i)});\n\n\t"

            elif argInfo[0] == "long":
                cpp_code += f"\tlong "
                if argInfo[1] > 0:
                    for j in range(argInfo[1]):
                        cpp_code += "*"
                cpp_code += f"{getParamName(param_decl) + str(i)};\n\t"
                cpp_code += f"\tsscanf(strtok(NULL, \"\\n\"), \"%ld\", &{getParamName(param_decl) + str(i)});\n\n\t"

            elif argInfo[0] == "float":
                cpp_code += f"\tfloat "
                if argInfo[1] > 0:
                    for j in range(argInfo[1]):
                        cpp_code += "*"
                cpp_code += f"{getParamName(param_decl) + str(i)};\n\t"
                cpp_code += f"\tsscanf(strtok(NULL, \"\\n\"), \"%f\", &{getParamName(param_decl) + str(i)});\n\n\t"

            elif argInfo[0] == "double":
                cpp_code += f"\tdouble "
                if argInfo[1] > 0:
                    for j in range(argInfo[1]):
                        cpp_code += "*"
                cpp_code += f"{getParamName(param_decl) + str(i)};\n\t"
                cpp_code += f"\tsscanf(strtok(NULL, \"\\n\"), \"%lf\", &{getParamName(param_decl) + str(i)});\n\n\t"

            elif argInfo[0] == "char":
                cpp_code += f"\tchar "
                if argInfo[1] > 0:
                    for j in range(argInfo[1]):
                        cpp_code += "*"
                    cpp_code += f"{getParamName(param_decl) + str(i)} = strtok({buf}, \"\\n\");\n\t"
                else:
                    cpp_code += f"{getParamName(param_decl) + str(i)} = strtok({buf}, \"\\n\")[0];\n\t"
            elif argInfo[0] == "void":
                if argInfo[1] > 0:
                    cpp_code += f"\tvoid "
                    for j in range(argInfo[1]):
                        cpp_code += "*"
                    cpp_code += f"{getParamName(param_decl) + str(i)} = strtok({buf}, \"\\n\");\n\t"
            elif argInfo[0] == "FILE":
                if argInfo[1] > 0:
                    cpp_code += "\tFILE *fp; "
                    cpp_code += "\n\t\tfp = fopen(\"file.txt\" , "r");"
                    cpp_code += "\n\t\tif(fp == NULL) {"
                    cpp_code += "\n\t\t\tperror(\"Error opening file\");"
                    cpp_code += "\n\t\t\treturn(-1);"
                    cpp_code += "\n\t\t}\n\n"


            buf = "NULL"

        if harnessCreate == False:
            return

        cpp_harness_folder_path = os.path.join(cpp_folder_path, funcNameInfo[0])
        if not os.path.exists(cpp_harness_folder_path):
            os.mkdir(cpp_harness_folder_path)
        # Create in folder
        cpp_harness_in_folder_path = os.path.join(cpp_harness_folder_path, "in")
        if not os.path.exists(cpp_harness_in_folder_path):
            os.mkdir(cpp_harness_in_folder_path)

        createTestCasesinInFolder(node.args.params, cpp_harness_in_folder_path)

        # Create out folder
        cpp_harness_out_folder_path = os.path.join(cpp_harness_folder_path, "out")
        if not os.path.exists(cpp_harness_out_folder_path):
            os.mkdir(cpp_harness_out_folder_path)
        # Create harness
        cpp_file_name = f"{cpp_harness_folder_path}/{funcNameInfo[0]}_harness.c"

            ################### 参数初始化 ###################

        fun_signature_code = ""
        if (qual == "const"):
            cpp_code += f"\n\t\t{qual} {funcNameInfo[1]}"
            fun_signature_code += f"{qual} {funcNameInfo[1]}"
            # print(f"{qual} {funcNameInfo[1]}", end="")
        else:
            if funcNameInfo[1] != "void" or (funcNameInfo[1] == "void" and funcNameInfo[2]> 0):
                cpp_code += f"\n\t\t{funcNameInfo[1]}"
                fun_signature_code += f"{funcNameInfo[1]}"
                # print(f"{funcNameInfo[1]}", end="")
            else:
                cpp_code += f"\n\t\t"
                fun_signature_code += f"void"
                # print(f"void", end="")
        for i in range(funcNameInfo[2]):
            cpp_code += "*"
            fun_signature_code += "*"
            # print("*", end="")

        if funcNameInfo[1] != "void" or (funcNameInfo[1] == "void" and funcNameInfo[2]> 0):
            cpp_code += f" result = {funcNameInfo[0]}("
            fun_signature_code += f" {funcNameInfo[0]}("
        else:
            cpp_code += f" {funcNameInfo[0]}("
            fun_signature_code += f" {funcNameInfo[0]}("
        # print(f" result = {funcNameInfo[0]}(", end="")


        for i, param_decl in enumerate(node.args.params):
            argInfo = self.isArgPointer(param_decl.type, 0)
            if len(node.args.params) == 1:
                if argInfo[0] =="void" and argInfo[1] == 0:
                    cpp_code += f");\n"
                    fun_signature_code += ")"
                else:
                    cpp_code += f"{getParamName(param_decl) + str(i)});\n"
                    fun_signature_code += "arg)"
                # print(");\n")
            elif len(node.args.params) == 1:
                cpp_code += f"{getParamName(param_decl) + str(i)});\n"
                fun_signature_code += "arg)"
            elif i < len(node.args.params) - 1:
                cpp_code += f"{getParamName(param_decl) + str(i)}, "
                fun_signature_code += f"{argInfo[0]}"
                if argInfo[1] > 0:
                    for i in range(argInfo[1]):
                        fun_signature_code += "*"
                        # print("*", end="")
                fun_signature_code += f" {getParamName(param_decl) + str(i)}, "
                # print(f"{param_decl.name}, ", end="")
            else:
                cpp_code += f"{getParamName(param_decl) + str(i)});\n"
                fun_signature_code += f"{argInfo[0]}"
                if argInfo[1] > 0:
                    for i in range(argInfo[1]):
                        fun_signature_code += "*"
                        # print("*", end="")
                fun_signature_code += f" {getParamName(param_decl) + str(i)})"
                # print(f"{param_decl.name});\n")

        cpp_code += f"\t\tconst char *funSignature = \"{fun_signature_code}\";\n\t\t"
        ######################## function call  ########################

        if funcNameInfo[2] > 0 and funcNameInfo[1] in struct_map:
            name_path = ["result"]
            type_path = [funcNameInfo[1]]
            pt = Points_to_Information(funcNameInfo[2], name_path, type_path)
            points_to_path["result"] = [pt]
            ExtendStructPointer("result", funcNameInfo[1], name_path, type_path, points_to_path)

        else:
            name_path = ["result"]
            type_path = [funcNameInfo[1]]
            points_to_path["result"] = []
            pt = Points_to_Information(funcNameInfo[2], name_path, type_path)
            points_to_path["result"].append(pt)

        # print("return value: ")
        # for pt in points_to_path["result"]:
        #     print(f"\t pointer_level: {pt.pointer_level}, name_path: {pt.name_path}, type_path: {pt.type_path}")

        for i, param_decl in enumerate(node.args.params):
            argInfo = self.isArgPointer(param_decl.type, 0)
            if argInfo[1] > 0 and argInfo[0] in struct_map:
                type_path = [argInfo[0]]
                name_path = [getParamName(param_decl) + str(i)]
                pt = Points_to_Information(argInfo[1], name_path, type_path)
                points_to_path[getParamName(param_decl) + str(i)] = [pt]
                # ExtendStructPointer(param_decl.name, argInfo[0], name_path, type_path, points_to_path)
                ExtendStructPointer(getParamName(param_decl) + str(i), argInfo[0], name_path, type_path, points_to_path)
            else:
                type_path = [argInfo[0]]
                name_path = [getParamName(param_decl) + str(i)]
                points_to_path[getParamName(param_decl) + str(i)] = []
                pt = Points_to_Information(argInfo[1], name_path, type_path)
                points_to_path[getParamName(param_decl) + str(i)].append(pt)

        if funcNameInfo[0] == "fclose":
            print("funcName: ", funcNameInfo[0])

        # 如果没有IF语句，那么就不用生成harness了
        CreateHarness_If = False
        # Create a set to record the processed key pairs
        k = 0;
        processed_pairs = set()
        for key1, value1 in points_to_path.items():
            for key2, value2 in points_to_path.items():
                if key1 != key2 and (key1, key2) not in processed_pairs and (key2, key1) not in processed_pairs:
                    # add the processed key pair to the set
                    processed_pairs.add((key1, key2))
                    for pt1 in value1:
                        for pt2 in value2:
                            if_code = getIFCode(pt1, pt2)
                            # print("pt1.name_path: ", pt1.name_path)
                            # print("pt2.name_path: ", pt2.name_path)
                            if if_code[0] != "":
                                CreateHarness_If = True
                                # print("CreateHarness_If: ", CreateHarness_If)
                                cpp_code += if_code[0]
                                cpp_code += "\t\t{"
                                if if_code[1] == "result":
                                    cpp_code += f"\n\t\t\tSpecFileGeneration(\"return {if_code[2]};\", \"{funcNameInfo[0]}_{k}.cpp\", funSignature);"
                                else:
                                    cpp_code += f"\n\t\t\tSpecFileGeneration(\"{if_code[3]};\", \"{funcNameInfo[0]}_{k}.cpp\", funSignature);"
                                cpp_code += "\n\t\t}"
                                k += 1

        print(" ----------------------------------------- ")
        cpp_code += afl_loop_end_code
        cpp_code += main_end_coce
        with open(cpp_file_name, "w") as cpp_file:
            cpp_file.write(cpp_code + "\n")

        if CreateHarness_If == False:
            if os.path.exists(cpp_harness_folder_path) and os.path.isdir(cpp_harness_folder_path):
                shutil.rmtree(cpp_harness_folder_path)
            else:
                print("文件夹不存在或不是一个目录")


TypedefVisitor().visit(ast)

StructVisitor().visit(ast)

FuncDeclVisitor().visit(ast)
