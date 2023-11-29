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
        unsigned w = 100, h = 100;  // Image dimensions
        LodePNGColorType colortype = LCT_RGBA;
        unsigned bitdepth = 8;

        // Allocate memory for a simple image
        size_t image_size = w * h * 4; // 4 bytes per pixel for RGBA
        unsigned char* image = (unsigned char*)malloc(image_size);

        if(!image) {
            fprintf(stderr, "Failed to allocate memory for image\n");
            return 1;
        }

        // Fill the image with a simple pattern
        for (unsigned y = 0; y < h; ++y) {
            for (unsigned x = 0; x < w; ++x) {
                size_t pixel_pos = 4 * (y * w + x);
                image[pixel_pos + 0] = x % 256; // Red
                image[pixel_pos + 1] = y % 256; // Green
                image[pixel_pos + 2] = 128;     // Blue
                image[pixel_pos + 3] = 255;     // Alpha
            }
        }

        // Encode the image
        unsigned char* png;
        size_t pngsize;
        unsigned error = lodepng_encode_memory(&png, &pngsize, image, w, h, colortype, bitdepth);

   

        const char *funSignature = "unsigned lodepng_decode_memory(unsigned char** out, unsigned* w, unsigned* h, const unsigned char* in, size_t insize, LodePNGColorType colortype, unsigned bitdepth)";
		
		if(png == image)
        {
            SpecFileGeneration("*out == in", "lodepng_decode_memory_0.cpp", funSignature);
        }
        if(png!= NULL && image != NULL && memcmp(png, image, pngsize) == 0)
        {
            SpecFileGeneration("memcmp(*out, in, pngsize) == 0", "lodepng_decode_memory_1.cpp", funSignature);
        }

        lodepng_save_file(png, pngsize, "output.png");

        // Free the memory
        free(image);
        free(png);

    }

    return 0;
}
