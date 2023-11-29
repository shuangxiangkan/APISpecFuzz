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

        // Hardcoded dummy chunk (for demonstration purposes)
        unsigned char dummy_chunk[] = {0, 0, 0, 0, 't', 'E', 'X', 't', 'k', 'e', 'y', 0, 'v', 'a', 'l', 'u', 'e'};
        size_t dummy_chunk_size = sizeof(dummy_chunk);

        // Append the dummy chunk to the PNG data
        error = lodepng_chunk_append(&buffer, &buffersize, dummy_chunk);

        
        const char *funSignature = "unsigned lodepng_chunk_append(unsigned char** out, size_t* outsize, const unsigned char* chunk)";

        if (buffer == dummy_chunk) {
            SpecFileGeneration("out == chunk;", "lodepng_chunk_append_0.cpp", funSignature);
        }

        if (buffer!= NULL && dummy_chunk != NULL && memcpy(buffer, dummy_chunk, buffersize) == 0) {
            SpecFileGeneration("memcpy(out, chunk, outsize);", "lodepng_chunk_append_1.cpp", funSignature);
        }

        free(buffer);

    }

    return 0;
}
