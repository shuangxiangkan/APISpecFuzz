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
        unsigned char* buffer;
        size_t buffersize;
        unsigned error = lodepng_load_file(&buffer, &buffersize, argv[1]);
        if (error) {
            fprintf(stderr, "Error %u: %s\n", error, lodepng_error_text(error));
            return -1;
        }

        // Here, you would typically find a specific chunk in the buffer.
        // For simplicity, let's assume the first chunk after the header is what we need.
        unsigned char* chunk = buffer + 8; // Skip the 8-byte PNG header

        // Get the data of the chunk
        unsigned char* data = lodepng_chunk_data(chunk);

        const char *funSignature = "unsigned char* lodepng_chunk_data(unsigned char* chunk)";

        if (data != NULL && chunk != NULL && data == chunk) {
            SpecFileGeneration("data == chunk;", "lodepng_chunk_data_0.cpp", funSignature);
        }
        if (data != NULL && chunk != NULL && strcmp((char *)data, (char *)chunk) == 0) {
            SpecFileGeneration("strcmp((char *)data, (char *)chunk) == 0;", "lodepng_chunk_data_1.cpp", funSignature);
        }
        // Clean up
        free(buffer);
    }

    return 0;
}
