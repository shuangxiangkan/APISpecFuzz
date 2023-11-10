struct InnerStruct {
    int inner_field;
};

struct OuterStruct {
    int outer_field;
    struct InnerStruct inner;
};
