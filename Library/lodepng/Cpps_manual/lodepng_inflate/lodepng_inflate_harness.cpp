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

        // Load PNG file into memory
        unsigned char* compressed_data;
        size_t compressed_size;
        unsigned error = lodepng_load_file(&compressed_data, &compressed_size, argv[1]);
        if (error) {
            fprintf(stderr, "Error %u: %s\n", error, lodepng_error_text(error));
            return -1;
        }

        unsigned char* decompressed_data = NULL;
        size_t decompressed_size = 0;

        // Decompression settings
        LodePNGDecompressSettings settings;
        lodepng_decompress_settings_init(&settings);

        // Perform the decompression
        error = lodepng_inflate(&decompressed_data, &decompressed_size,
                                        compressed_data, compressed_size,
                                        &settings);


        const char *funSignature = "unsigned lodepng_inflate(unsigned char** out, size_t* outsize, const unsigned char* in, size_t insize, const LodePNGDecompressSettings* settings)";

        if (decompressed_data != NULL && compressed_data != NULL && decompressed_data == compressed_data) {
            SpecFileGeneration("decompressed_data == compressed_data;", "lodepng_inflate_0.cpp", funSignature);
        }

        if (decompressed_data != NULL && compressed_data != NULL && strcmp((char *)decompressed_data, (char *)compressed_data) == 0) {
            SpecFileGeneration("strcmp((char *)decompressed_data, (char *)compressed_data);", "lodepng_inflate_1.cpp", funSignature);
        }
        // Clean up
        free(decompressed_data);
    }

    return 0;
}
