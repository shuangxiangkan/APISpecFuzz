# parser_file 用于处理c语言文件
from pycparser import parse_file
from pycparser import CParser
# c语言有错误时，会引出此错误
from pycparser.plyparser import ParseError
# c_ast.py 文件下包含了抽象语法树的节点类
from pycparser.c_ast import *

filename = 'sample.h'

ast = parse_file(filename, use_cpp = True, cpp_path = 'clang', cpp_args = ['-E', r'-I/Users/shuangxiangkan/Fuzz/pycparser/utils/fake_libc_include'])
# ast = parse_file(filename, use_cpp = False)

print(type(ast))

for eachNode in ast.ext:
    print(eachNode.__class__.__name__)  # 打印节点类型名
    print(eachNode)   # 打印节点内容

