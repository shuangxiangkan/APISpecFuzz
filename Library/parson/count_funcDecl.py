from pycparser import c_parser, c_ast

def count_function_declarations(filename):
    with open(filename, 'r') as file:
        source = file.read()

    parser = c_parser.CParser()
    ast = parser.parse(source)

    class FuncDeclVisitor(c_ast.NodeVisitor):
        def __init__(self):
            self.count = 0

        def visit_Decl(self, node):
            if isinstance(node.type, c_ast.FuncDecl):
                self.count += 1

    visitor = FuncDeclVisitor()
    visitor.visit(ast)
    return visitor.count

# 替换这里的文件名为你的 .h 文件
header_file = '/Library/parson/parson_2.h'
print(f'Number of function declarations: {count_function_declarations(header_file)}')
