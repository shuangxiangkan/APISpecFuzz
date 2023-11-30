#include "lodepng.h"
#include <stdio.h>
#include <stdlib.h>

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

int main(int argc, char *argv[]) {
    if (argc < 2) {
        // fprintf(stderr, "Usage: %s <input_file.png>\n", argv[0]);
        return -1;
    }

    while (__AFL_LOOP(1000)) 
	{

        // Open the file
        FILE *file = fopen(argv[1], "rb");
        if (!file) {
            // perror("Cannot open file");
            return -1;
        }

        // 获取文件大小
        fseek(file, 0, SEEK_END);
        size_t compressedSize = ftell(file);
        fseek(file, 0, SEEK_SET);

        // 分配内存并读取数据
        unsigned char* compressedData = (unsigned char*)malloc(compressedSize);
        if (!compressedData) {
            printf("Unable to allocate memory\n");
            fclose(file);
            return 1;
        }
        fread(compressedData, 1, compressedSize, file);
        fclose(file);

        // 准备解压缩输出变量
        unsigned char *output = NULL;
        size_t outputSize = 0;

        LodePNGDecompressSettings settings;
        lodepng_decompress_settings_init(&settings);
        
        // 调用解压缩函数
        unsigned error = lodepng_zlib_decompress(&output, &outputSize, compressedData, compressedSize, &settings);
        

        const char *funSignature = "unsigned lodepng_zlib_decompress(unsigned char** out, size_t* outsize, const unsigned char* in, size_t insize, const LodePNGDecompressSettings* settings)";
		
		if (output == compressedData)
        {
            SpecFileGeneration("output = compressedData", "lodepng_zlib_compress_1.cpp", funSignature);
        }
        if (output != NULL && compressedData != NULL && memcmp(output, compressedData, outputSize) == 0) {
            SpecFileGeneration("memcmp(output, compressedData, outputSize) == 0", "lodepng_zlib_compress_2.cpp", funSignature);
        }

        // 清理
        free(output);
        free(compressedData);
    }

    return 0;
}
