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

int main() {
    char buf[1024];

    while (__AFL_LOOP(1000)) {
        memset(buf, 0, sizeof(buf));
        if (read(0, buf, sizeof(buf)) < 0) {
            return 1;
        }

        const char* input_data = strtok(buf, "\n");

        // Example uncompressed data
        // const unsigned char input_data[] = "Example data to be compressed";
        size_t input_size = sizeof(input_data) - 1; // Exclude the null terminator

        // Prepare output variables for compressed data
        unsigned char* output_data = NULL;
        size_t output_size = 0;

        // Compression settings: using default settings
        const LodePNGCompressSettings* settings = NULL;

        // Compress data
        unsigned error = lodepng_zlib_compress(&output_data, &output_size, (const unsigned char*)input_data, input_size, settings);
        if (error) {
            fprintf(stderr, "==========================Error compressing data: %s\n", lodepng_error_text(error));
        } else {
        // The compressed data is now in output_data with a size of output_size
        // P
        }

        const char *funSignature = "unsigned lodepng_zlib_compress(unsigned char** out, size_t* outsize, const unsigned char* in, size_t insize,  const LodePNGCompressSettings* settings);";

        // if (output_data != NULL && input_data != NULL && (void *)output_data == (void *)input_data) {
        //     SpecFileGeneration("output_data = input_data;", "lodepng_zlib_compress_0.cpp", funSignature);
        // }

        // if (output_data != NULL && input_data != NULL && memcmp(output_data, input_data, input_size) == 0) {
        //     SpecFileGeneration("memcmp(output_data, input_data, input_size);", "lodepng_zlib_compress_1.cpp", funSignature);
        // }

        free(output_data);
    }

    return 0;
}
