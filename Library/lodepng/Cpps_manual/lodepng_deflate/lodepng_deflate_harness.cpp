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
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <input_file.png>\n", argv[0]);
        return -1;
    }
    while (__AFL_LOOP(1000)) {

        const unsigned char uncompressed_data[] = "Example data that needs to be compressed";
        size_t uncompressed_size = sizeof(uncompressed_data);

        // Prepare output variables
        unsigned char* compressed_data = NULL;
        size_t compressed_size = 0;

        // Compression settings (NULL for default settings)
        const LodePNGCompressSettings* settings = NULL; 


        // Perform the decompression
        unsigned error = lodepng_deflate(&compressed_data, &compressed_size,
                                     uncompressed_data, uncompressed_size,
                                     settings);



        const char *funSignature = "unsigned lodepng_inflate(unsigned char** out, size_t* outsize, const unsigned char* in, size_t insize, const LodePNGDecompressSettings* settings)";

        if (uncompressed_data != NULL && compressed_data != NULL && uncompressed_data == compressed_data) {
            SpecFileGeneration("uncompressed_data == compressed_data;", "lodepng_inflate_0.cpp", funSignature);
        }

        if (uncompressed_data != NULL && compressed_data != NULL && strcmp((char *)uncompressed_data, (char *)compressed_data) == 0) {
            SpecFileGeneration("strcmp((char *)uncompressed_data, (char *)compressed_data);", "lodepng_inflate_1.cpp", funSignature);
        }
        // Clean up
        free(compressed_data);
    }

    return 0;
}
