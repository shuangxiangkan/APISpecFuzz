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
            // fprintf(stderr, "Error %u: %s\n", error, lodepng_error_text(error));
            return -1;
        }

        // Start iterating over the chunks, beginning after the 8-byte PNG signature
        const unsigned char* chunk = buffer + 8; // Skip 8-byte PNG signature
        const unsigned char* end = buffer + buffersize;

        const unsigned char* next_chunk = lodepng_chunk_next_const(chunk, end);

        const char *funSignature = "const unsigned char* lodepng_chunk_next_const(const unsigned char* chunk, const unsigned char* end)";

        if (next_chunk != NULL && chunk != NULL && next_chunk == chunk) {
            SpecFileGeneration("next_chunk == chunk;", "lodepng_chunk_next_const_0.cpp", funSignature);
        }
        if (next_chunk != NULL && end != NULL && next_chunk == end) {
            SpecFileGeneration("next_chunk == end;", "lodepng_chunk_next_const_1.cpp", funSignature);
        }
        if (chunk != NULL && end != NULL && chunk == end) {
            SpecFileGeneration("chunk == end;", "lodepng_chunk_next_const_2.cpp", funSignature);
        }

        if (next_chunk != NULL && chunk != NULL && strcmp((char*)next_chunk, (char*)chunk) == 0) {
            SpecFileGeneration("strcmp((char*)next_chunk, (char*)chunk);", "lodepng_chunk_next_const_3.cpp", funSignature);
        }
        if (next_chunk != NULL && end != NULL && strcmp((char*)next_chunk, (char*)end) == 0) {
            SpecFileGeneration("strcmp((char*)next_chunk, (char*)end);", "lodepng_chunk_next_const_4.cpp", funSignature);
        }
        if (chunk != NULL && end != NULL && strcmp((char*)chunk, (char*)end) == 0) {
            SpecFileGeneration("strcmp((char*)chunk, (char*)end);", "lodepng_chunk_next_const_5.cpp", funSignature);
        }
        // Clean up
        free(buffer);
    }

    return 0;
}
