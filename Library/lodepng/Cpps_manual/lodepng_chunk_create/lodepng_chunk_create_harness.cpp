#include "lodepng.h"
#include <cstring>
#include <cstdio>
#include <iostream>
#include <unistd.h>


using namespace std;

void SpecFileGeneration(const char *specification, const char *fileName, const char *funSignature)
{
	FILE *file = fopen(fileName, "r");
	if (file) {
		fclose(file);
		return;
	}

	file = fopen(fileName, "a");
	if (file) {
		fprintf(file, "%s\n", funSignature);
		fprintf(file, "{\n");
		fprintf(file, "	%s\n", specification);
		fprintf(file, "}\n");
		fclose(file);
	}
}

int main(int argc, char *argv[])
{

    while (__AFL_LOOP(1000)) {

        unsigned char* out = NULL;
        size_t outsize = 0;
        const char* type = "tEXt"; // 示例 chunk 类型
        const unsigned char data[] = "Example text"; // 示例数据
        unsigned length = sizeof(data) - 1; // 数据长度

        // 创建 chunk
        unsigned error = lodepng_chunk_create(&out, &outsize, length, type, data);
        if (error) {
            fprintf(stderr, "Error creating chunk: %s\n", lodepng_error_text(error));
            return 1;
        }

        const char *funSignature = "unsigned lodepng_chunk_create(unsigned char** out, size_t* outsize, unsigned length,const char* type, const unsigned char* data)";

        if (out == data) {
            SpecFileGeneration("out = data;", "lodepng_chunk_create_0.cpp", funSignature);
        }
        if (out != NULL && outsize != NULL && strcmp((char*)out, (char*)data) == 0) {
            SpecFileGeneration("strcmp((char*)out, (char*)data);", "lodepng_chunk_create_1.cpp", funSignature);
        }
        // Clean up
        free(out);

    }

    return 0;
}
