# parser_file 用于处理c语言文件
from pycparser import parse_file, c_ast
# c_ast.py 文件下包含了抽象语法树的节点类
from pycparser.c_ast import *
import copy

filename = 'cJSON.h'
# filename = 'cJSON2.h'


# ast = parse_file(filename, use_cpp= False)
ast = parse_file(filename, use_cpp=True, cpp_path='clang',
                 cpp_args=['-E', r'-I/Users/shuangxiangkan/Fuzz/pycparser/utils/fake_libc_include'])

default_headers_code = ('#include <iostream>\n'
                        '#include <fstream>\n'
                        '#include <string>\n'
                        '#include "cJSON.h"\n\n')

main_begin_code = 'int main() {\n\n\t'
main_end_coce = '\n\treturn 0;\n}'

afl_init_code = '__AFL_INIT();\n\n\t'
afl_loop_begin_code = 'while (__AFL_LOOP(1000)) \n\t{\n\t'
afl_loop_end_code = '\n\t}\n'


def getIFCode(pt1, pt2):
    if_code = ""
    if pt1.type_path[-1] != "void" and pt2.type_path[-1] != "void" and pt1.type_path[-1] == pt2.type_path[-1]:
        lvalue_list = []
        rvalue_list = []
        lvalue_path_list = []
        rvalue_path_list = []

        for name in pt1.name_path:
            lvalue_list.append(name)
            lvalue = " -> ".join(lvalue_list)
            lvalue_path_list.append(lvalue)

        for name in pt2.name_path:
            rvalue_list.append(name)
            rvalue = " -> ".join(rvalue_list)
            rvalue_path_list.append(rvalue)

        if_code += "\n\t\tif("

        for lvalue_path in lvalue_path_list[:-1]:
            if_code += f"{lvalue_path} != NULL &&"

        for rvalue_path in rvalue_path_list[:-1]:
            if_code += f"{rvalue_path} != NULL &&"

        if pt1.pointer_level == pt2.pointer_level:
            if_code += f"{lvalue_path_list[-1]} == {rvalue_path_list[-1]})\n"
        elif pt1.pointer_level == pt2.pointer_level + 1:
            if_code += f"*{lvalue_path_list[-1]} == {rvalue_path_list[-1]})\n"
        elif pt1.pointer_level + 1 == pt2.pointer_level:
            if_code += f"{lvalue_path_list[-1]} == *{rvalue_path_list[-1]})\n"

        return if_code, lvalue_path_list[-1], rvalue_path_list[-1]

    return if_code, "", ""


def SpecFileGenFunctionCode():
    code = "void SpecFileGeneration(std::string specification, std::string fileName, std::string funSignature)\n"
    code += "{\n"
    code += f"\tstd::string fn = fileName;"
    code += f"\n\tstd::ofstream file(fn, std::ios::app);"
    code += f"\n\tfile << funSignature;"
    code += f"\n\tfile << \"\\n\";"
    code += f"\n\tfile << \"{{\\n\";"
    code += f"\n\tfile << specification;"
    code += f"\n\tfile << \"\\n\";"
    code += f"\n\tfile << \"}}\\n\";"
    code += f"\n\tfile.close();\n"
    code += "}\n\n"

    return code


class Points_to_Information:
    def __init__(self, pointer_level, name_path, type_path):
        # Record the pointer level of the last element in the path
        self.pointer_level = pointer_level
        self.name_path = name_path
        self.type_path = type_path


class TypedefVisitor(c_ast.NodeVisitor):
    def __init__(self):
        self.typedef_map = {}

    def visit_Typedef(self, node):
        if isinstance(node.type, c_ast.TypeDecl):
            # if node.type.declname and node.name and node.type.declname.startswith("cJSON"):
            if node.type.declname and node.name:
                value_name = node.type.declname
                if isinstance(node.type.type, c_ast.Struct):
                    isStruct = True
                elif isinstance(node.type.type, c_ast.IdentifierType):
                    isStruct = False

                self.typedef_map[node.name] = {"isStruct": isStruct, "type": node.type.type}
                # print(f"typedef name: {node.name}, value name: {value_name}, isStruct: {isStruct}, type: {node.type.type}")
                print(
                    f"typedef name: {node.name}, value name: {value_name}, isStruct: {isStruct}")


struct_map = {}


class StructVisitor(c_ast.NodeVisitor):

    def visit_Struct(self, node):
        # Record the struct with name starts with "cJSON"
        if node.name and node.name.startswith("cJSON"):
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
        funcNameInfo = self.isFuncPointer(node.type, 0)
        # Choose the function name starts with "cJSON" and is not "cJSON_InitHooks"
        if funcNameInfo[0].startswith("cJSON_") and funcNameInfo[0] != "cJSON_InitHooks":
            # print("node.type:", node.type)
            print(" ----------------------------------------- ")
            points_to_path = {}
            # if funcNameInfo[0] == "cJSON_Parse":
            #     print(f"function name: {funcNameInfo[0]} ")
            qual = ""
            if (isinstance(node.type, PtrDecl) and node.type.type.quals.__len__() > 0):
                qual = node.type.type.quals[0]
            elif (isinstance(node.type, TypeDecl) and node.type.quals.__len__() > 0):
                qual = node.type.quals[0]

            ######################## function call  ########################
            cpp_file_name = f"Cpps/{funcNameInfo[0]}_harness.cpp"
            # cpp_code = f'#include <iostream>\n#include <fstream>\n#include <string>\n#include "cJSON.h"\n\nint main() {{\n\n\t'
            cpp_code = default_headers_code
            cpp_code += SpecFileGenFunctionCode()
            cpp_code += main_begin_code
            # cpp_code += afl_init_code
            cpp_code += afl_loop_begin_code

            for i, param_decl in enumerate(node.args.params):
                ################### 参数初始化 ###################
                argInfo = self.isArgPointer(param_decl.type, 0)
                if argInfo[0] == "cJSON":
                    cpp_code += f"\tchar _{param_decl.name}[4096];\n\t"
                    cpp_code += f"\tif (fgets(_{param_decl.name}, sizeof(_{param_decl.name}), stdin) == NULL) {{\n\t\t"
                    cpp_code += f"\treturn 1;\n\t\t"
                    cpp_code += f"}}\n\t"
                    cpp_code += f"\tcJSON *{param_decl.name} = cJSON_Parse(_{param_decl.name});\n\n\t"

                elif argInfo[0] == "int":
                    cpp_code += f"\tint "
                    if argInfo[1] > 0:
                        for i in range(argInfo[1]):
                            cpp_code += "*"
                    cpp_code += f"{param_decl.name};\n\t"
                    cpp_code += f"\tscanf(\"%d\", &{param_decl.name});\n\n\t"

                elif argInfo[0] == "cJSON_bool":
                    cpp_code += f"\tcJSON_bool {param_decl.name};\n\t"
                    cpp_code += f"\tscanf(\"%d\", &{param_decl.name});\n\n\t"

                elif argInfo[0] == "float":
                    cpp_code += f"\tfloat "
                    if argInfo[1] > 0:
                        for i in range(argInfo[1]):
                            cpp_code += "*"
                    cpp_code += f"{param_decl.name};\n\t"
                    cpp_code += f"\tscanf(\"%f\", &{param_decl.name});\n\n\t"

                elif argInfo[0] == "double":
                    cpp_code += f"\tdouble "
                    if argInfo[1] > 0:
                        for i in range(argInfo[1]):
                            cpp_code += "*"
                    cpp_code += f"{param_decl.name};\n\t"
                    cpp_code += f"\tscanf(\"%lf\", &{param_decl.name});\n\n\t"

                elif argInfo[0] == "char":
                    cpp_code += f"\tchar {param_decl.name}[1024];\n\t"
                    cpp_code += f"\tif (fgets({param_decl.name}, sizeof({param_decl.name}), stdin) == NULL) {{\n\t\t"
                    cpp_code += f"\treturn 1;\n\t\t"
                    cpp_code += f"}}\n\n\t"
                ################### 参数初始化 ###################

            fun_signature_code = ""
            if (qual == "const"):
                cpp_code += f"\n\t\t{qual} {funcNameInfo[1]}"
                fun_signature_code += f"{qual} {funcNameInfo[1]}"
                print(f"{qual} {funcNameInfo[1]}", end="")
            else:
                cpp_code += f"\n\t\t{funcNameInfo[1]}"
                fun_signature_code += f"{funcNameInfo[1]}"
                print(f"{funcNameInfo[1]}", end="")
            for i in range(funcNameInfo[2]):
                cpp_code += "*"
                fun_signature_code += "*"
                print("*", end="")

            # fun_signature_code = ""
            cpp_code += f" result = {funcNameInfo[0]}("
            fun_signature_code += f" {funcNameInfo[0]}("
            print(f" result = {funcNameInfo[0]}(", end="")
            for i, param_decl in enumerate(node.args.params):
                # print("len(node.args.params):", len(node.args.params))
                argInfo = self.isArgPointer(param_decl.type, 0)
                if len(node.args.params) == 1 and param_decl.name is None:
                    cpp_code += ");\n"
                    fun_signature_code += ")"
                    print(");\n")
                elif i < len(node.args.params) - 1:
                    cpp_code += f"{param_decl.name}, "
                    fun_signature_code += f"{argInfo[0]}"
                    if argInfo[1] > 0:
                        for i in range(argInfo[1]):
                            fun_signature_code += "*"
                            print("*", end="")
                    fun_signature_code += f" {param_decl.name}, "
                    print(f"{param_decl.name}, ", end="")
                else:
                    cpp_code += f"{param_decl.name});\n"
                    fun_signature_code += f"{argInfo[0]}"
                    if argInfo[1] > 0:
                        for i in range(argInfo[1]):
                            fun_signature_code += "*"
                            print("*", end="")
                    fun_signature_code += f" {param_decl.name})"
                    print(f"{param_decl.name});\n")

            print(cpp_code)
            cpp_code += f"\n\t\tstd::string fileName = \"{funcNameInfo[0]}.cpp\";\n"
            cpp_code += f"\t\tstd::string funSignature = \"{fun_signature_code}\";\n\t\t"
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

            print("return value: ")
            for pt in points_to_path["result"]:
                print(f"\t pointer_level: {pt.pointer_level}, name_path: {pt.name_path}, type_path: {pt.type_path}")

            for i, param_decl in enumerate(node.args.params):
                argInfo = self.isArgPointer(param_decl.type, 0)
                if argInfo[1] > 0 and argInfo[0] in struct_map:
                    type_path = [argInfo[0]]
                    name_path = [param_decl.name]
                    pt = Points_to_Information(argInfo[1], name_path, type_path)
                    points_to_path[param_decl.name] = [pt]
                    ExtendStructPointer(param_decl.name, argInfo[0], name_path, type_path, points_to_path)
                else:
                    type_path = [argInfo[0]]
                    name_path = [param_decl.name]
                    points_to_path[param_decl.name] = []
                    pt = Points_to_Information(argInfo[1], name_path, type_path)
                    points_to_path[param_decl.name].append(pt)

                print(f"parameter {i + 1}: ")
                for pt in points_to_path[param_decl.name]:
                    print(f"\tpointer_level: {pt.pointer_level}, name_path: {pt.name_path}, type_path: {pt.type_path}")

            # Create a set to record the processed key pairs
            processed_pairs = set()
            for key1, value1 in points_to_path.items():
                for key2, value2 in points_to_path.items():
                    if key1 != key2 and (key1, key2) not in processed_pairs and (key2, key1) not in processed_pairs:
                        # add the processed key pair to the set
                        processed_pairs.add((key1, key2))
                        for pt1 in value1:
                            for pt2 in value2:
                                if_code = getIFCode(pt1, pt2)
                                if if_code[0] != "":
                                    cpp_code += if_code[0]
                                    cpp_code += "\t\t{"
                                    if if_code[1] == "result":
                                        cpp_code += f"\n\t\t\tSpecFileGeneration(\"return {if_code[2]}\", fileName, funSignature);"
                                    else:
                                        cpp_code += f"\n\t\t\tSpecFileGeneration(\"{if_code[1]} = {if_code[2]}\", fileName, funSignature);"
                                    cpp_code += "\n\t\t}"

            print(" ----------------------------------------- ")
            cpp_code += afl_loop_end_code
            cpp_code += main_end_coce
            with open(cpp_file_name, "w") as cpp_file:
                cpp_file.write(cpp_code + "\n")

    # def visit_FuncDecl(self, node):
    #     print(" --- 函数type:", node.type)


# TypedefVisitor().visit(ast)

StructVisitor().visit(ast)

FuncDeclVisitor().visit(ast)
