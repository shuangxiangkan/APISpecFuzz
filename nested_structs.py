from pycparser import c_parser, c_ast

# 示例C代码
c_code = """
struct InnerStruct {
    int inner_field;
};

struct OuterStruct {
    int outer_field;
    struct InnerStruct inner;
};
"""

# 创建C解析器
parser = c_parser.CParser()

# 解析C代码
ast = parser.parse(c_code)

# 用于展开结构体的函数
def expand_struct(node):
    if isinstance(node, c_ast.Struct):
        struct_name = node.name
        print(f"发现结构体声明: {struct_name}")

        # 遍历结构体的字段
        for decl in node.decls:
            field_name = decl.name
            field_type = decl.type
            print(f"字段名称: {field_name}")
            # print(f"字段类型: {field_type}")

            # 如果字段的类型是结构体，找到结构体定义并展开
            if isinstance(field_type, c_ast.TypeDecl) and isinstance(field_type.type, c_ast.Struct):
                expand_struct(find_struct_definition(ast, field_type.type.name))

# 在AST中查找结构体定义
def find_struct_definition(ast, struct_name):
    for ext in ast.ext:
        if isinstance(ext, c_ast.Decl) and isinstance(ext.type, c_ast.Struct):
            # print(f"找到结构体定义: {struct_name}")
            # print(f"结构体类型: {ext.type.name}")
            if ext.type.name == struct_name:
                return ext.type
    return None

# 遍历AST以查找结构体声明并展开
for ext in ast.ext:
    if isinstance(ext, c_ast.Decl) and isinstance(ext.type, c_ast.Struct):
        expand_struct(ext.type)
