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
        fprintf(stderr, "Usage: %s <input_file.png>\n", argv[0]);
        return -1;
    }

    while (__AFL_LOOP(1000)) 
	{
        unsigned char* image;
        unsigned width, height;

        // Decode the PNG using lodepng_decode_file
        unsigned error = lodepng_decode_file(&image, &width, &height, argv[1], LCT_RGBA, 8);
        if (error) {
            fprintf(stderr, "Error %u: %s\n", error, lodepng_error_text(error));
            return -1;
        }

        // LodePNGColorMode structure to hold the color mode of the decoded image
        LodePNGColorMode decoded_color_mode;
        lodepng_color_mode_init(&decoded_color_mode);
        decoded_color_mode.colortype = LCT_RGBA; // Assuming RGBA for the example
        decoded_color_mode.bitdepth = 8;

        // Now let's create another LodePNGColorMode structure to copy the color mode into
        LodePNGColorMode copy_color_mode;
        lodepng_color_mode_init(&copy_color_mode);
        lodepng_color_mode_copy(&copy_color_mode, &decoded_color_mode);
            const char *funSignature = "void lodepng_color_mode_copy(LodePNGColorMode* dest, const LodePNGColorMode* source)";

        if(&copy_color_mode == &decoded_color_mode)
        {
            SpecFileGeneration("dest == source", "lodepng_color_mode_copy_0.cpp", funSignature);
        }
        if(memcmp(&copy_color_mode, &decoded_color_mode, sizeof(LodePNGColorMode)) == 0)
        {
            SpecFileGeneration("memcmp(dest, source, sizeof(LodePNGColorMode)) == 0", "lodepng_color_mode_copy_1.cpp", funSignature);
        }

        // Clean up
        lodepng_color_mode_cleanup(&decoded_color_mode);
        lodepng_color_mode_cleanup(&copy_color_mode);
        free(image);
    }

    return 0;
}
