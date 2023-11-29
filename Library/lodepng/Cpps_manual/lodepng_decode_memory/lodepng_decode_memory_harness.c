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
        FILE *pFile = fopen(argv[1], "rb");
        if (!pFile) {
            // perror("Cannot open file");
            return -1;
        }

        // Seek to the end of the file to determine its size
        fseek(pFile, 0, SEEK_END);
        size_t size = ftell(pFile);
        rewind(pFile);

        // Allocate memory to contain the whole file
        unsigned char *buffer = (unsigned char *)malloc(size);
        if (!buffer) {
            // fprintf(stderr, "Memory error");
            fclose(pFile);
            return -1;
        }

        // Copy the file into the buffer
        if (fread(buffer, 1, size, pFile) != size) {
            // fprintf(stderr, "Reading error");
            free(buffer);
            fclose(pFile);
            return -1;
        }
        fclose(pFile);

        // Decode the PNG
        unsigned char* image;
        unsigned width, height;
        unsigned int bitdepth = 8;
        unsigned error = lodepng_decode_memory(&image, &width, &height, buffer, size, LCT_RGBA, bitdepth);

        const char *funSignature = "unsigned lodepng_decode_memory(unsigned char** out, unsigned* w, unsigned* h, const unsigned char* in, size_t insize, LodePNGColorType colortype, unsigned bitdepth)";
		
		if(image == buffer)
        {
            SpecFileGeneration("*out == in", "lodepng_decode_memory_0.cpp", funSignature);
        }
        if(&width == &height)
        {
            SpecFileGeneration("w == h", "lodepng_decode_memory_1.cpp", funSignature);
        }
        if (image != NULL && buffer != NULL && memcmp(image, buffer, size) == 0)
        {
            SpecFileGeneration("memcmp(out, in, insize) == 0", "lodepng_decode_memory_2.cpp", funSignature);
        }


        free(image);
        free(buffer);
    }

    return 0;
}
