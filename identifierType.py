# parser_file 用于处理c语言文件
from pycparser import parse_file
from pycparser import CParser
# c语言有错误时，会引出此错误
from pycparser.plyparser import ParseError
# c_ast.py 文件下包含了抽象语法树的节点类
from pycparser.c_ast import *

filename = 'typedef.h'

ast = parse_file(filename, use_cpp= False)

my_ext = ast.ext[1]

print("my_ext = ", my_ext)

print("name = ", my_ext.name)
