from pycparser import c_parser, c_ast

# 示例C代码
c_code = """
typedef int* IntPtr;

void bar(IntPtr a);

void foo(int* a, double b);
"""

# 创建C解析器
parser = c_parser.CParser()

# 解析C代码
ast = parser.parse(c_code)


# 遍历AST以查找函数声明
class FunctionParameterVisitor(c_ast.NodeVisitor):
    def visit_Typedef(self, node):
        # print("typedef:", node)
        print("typedef名称:", node.name)
        print("typedef类型:", node.type)

    def visit_FuncDecl(self, node):
        # print("函数声明:", node)
        print("函数名:", node.type.declname)
        for param_decl in node.args.params:
            param_name = param_decl.name

            # 检查参数类型是否为指针类型
            # print(f"参数类型: {param_decl.type}")
            is_pointer = self.is_pointer_type(param_decl.type)

            print(f"参数名: {param_name}")
            print(f"参数是否是指针: {is_pointer}")
            # print("param_decl:", param_decl)

    def is_pointer_type(self, type_node):
        if isinstance(type_node, c_ast.PtrDecl):
            return True
        elif isinstance(type_node, c_ast.TypeDecl):
            return self.is_pointer_type(type_node.type)
        elif isinstance(type_node, c_ast.IdentifierType):
            # 处理typedef的情况
            typedef_name = type_node.names[0]
            typedef_type = self.get_typedef_type(typedef_name)
            return self.is_pointer_type(typedef_type)
        else:
            return False

    def get_typedef_type(self, typedef_name):
        # 根据typedef名称查找类型
        # 这里假定在全局范围内查找typedef
        global_scope = ast
        for ext in global_scope.ext:
            if isinstance(ext, c_ast.Typedef) and ext.name == typedef_name:
                return ext.type
        return None


# 创建访问器对象
parameter_visitor = FunctionParameterVisitor()

# 遍历AST以查找函数声明
parameter_visitor.visit(ast)
