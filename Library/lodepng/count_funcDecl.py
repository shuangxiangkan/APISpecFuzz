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
string_header_path = "lodepng.h"  # 使用相对路径

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

count = 0
class FuncDeclVisitor(NodeVisitor):
    # Iterate through the AST and print the function information
    def __init__(self):
        self.count = 0

    def visit_Decl(self, node):
        if isinstance(node.type, c_ast.FuncDecl):
            self.count += 1
            print("count:", self.count)
            print("name:", node.name)


FuncDeclVisitor().visit(ast)
