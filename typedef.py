# parser_file 用于处理c语言文件
from pycparser import parse_file
from pycparser import CParser
# c语言有错误时，会引出此错误
from pycparser.plyparser import ParseError
# c_ast.py 文件下包含了抽象语法树的节点类
from pycparser.c_ast import *

filename = 'typedef.h'

ast = parse_file(filename, use_cpp= False)

# print(ast.ext[0])

print("name = ", ast.ext[0].name)
print("quals = ", ast.ext[0].quals)
print("storage = ", ast.ext[0].storage)
# print("type = ", ast.ext[0].type)
print("coord.column= ", ast.ext[0].coord.column)
print("coord.line= ", ast.ext[0].coord.line)
print("coord.file= ", ast.ext[0].coord.file)



