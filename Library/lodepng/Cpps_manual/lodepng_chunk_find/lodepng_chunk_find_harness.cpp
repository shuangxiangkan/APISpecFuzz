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

        // Skip the 8-byte PNG signature
        unsigned char* chunk = buffer + 8;
        unsigned char* end = buffer + buffersize;

        // Define the chunk type to find (e.g., "IHDR")
        const char type[5] = "IHDR";

        // Find the specified chunk
        unsigned char* found_chunk = lodepng_chunk_find(chunk, end, type);

        const char *funSignature = "unsigned char* lodepng_chunk_find(unsigned char* chunk, unsigned char* end, const char type[5])";

        if (found_chunk != NULL && chunk != NULL && found_chunk == chunk) {
            SpecFileGeneration("found_chunk = chunk;", "lodepng_chunk_find_0.cpp", funSignature);
        }
        if (found_chunk != NULL && end != NULL && found_chunk == end) {
            SpecFileGeneration("found_chunk = end;", "lodepng_chunk_find_1.cpp", funSignature);
        }
        if (chunk != NULL && end != NULL && chunk == end) {
            SpecFileGeneration("chunk = end;", "lodepng_chunk_find_2.cpp", funSignature);
        }

        if (found_chunk != NULL && chunk != NULL && strcmp((char*)found_chunk, (char*)chunk) == 0) {
            SpecFileGeneration("strcmp((char*)found_chunk, (char*)chunk);", "lodepng_chunk_find_3.cpp", funSignature);
        }
        if (found_chunk != NULL && end != NULL && strcmp((char*)found_chunk, (char*)end) == 0) {
            SpecFileGeneration("strcmp((char*)found_chunk, (char*)end);", "lodepng_chunk_find_4.cpp", funSignature);
        }
        if (chunk != NULL && end != NULL && strcmp((char*)chunk, (char*)end) == 0) {
            SpecFileGeneration("strcmp((char*)chunk, (char*)end);", "lodepng_chunk_find_5.cpp", funSignature);
        }
        // Clean up
        free(buffer);
    }

    return 0;
}
