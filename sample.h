#ifndef MY_HEADER_H
#define MY_HEADER_H

struct MyStruct {
    int value1;
    double value2;
};

typedef struct{
  int value;
}A;

typedef struct{
  int value;
  A struct_value;
} B;

struct C bar(A a, B b);

void myFunction(const MyStruct& myStruct);

char* swap(char* str, int i, int j);

#endif // MY_HEADER_H
