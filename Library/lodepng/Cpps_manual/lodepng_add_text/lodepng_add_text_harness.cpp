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

        const char * key = strtok(buf, "\n");
        const char * str = strtok(NULL, "\n");

        LodePNGState state;
        lodepng_state_init(&state);

        // const char * key = "ExampleKey";
        // const char * str = "ExampleValue";

        // Add a text chunk
        unsigned error = lodepng_add_text(&state.info_png, key, str);
        if (error) {
            fprintf(stderr, "Error adding text: %u: %s\n", error, lodepng_error_text(error));
        } else {
            printf("Text chunk added successfully: Key='ExampleKey', Value='ExampleValue'\n");
        }

        const char *funSignature = "unsigned lodepng_add_text(LodePNGInfo* info, const char* key, const char* str)";

        if (state.info_png.text_keys == &key) {
            SpecFileGeneration("info->text_keys == key", "lodepng_add_text_0.cpp", funSignature);
        }
        if (state.info_png.text_strings == &str) {
            SpecFileGeneration("info->text_strings == str", "lodepng_add_text_1.cpp", funSignature);
        }
        if (state.info_png.itext_keys == &key) {
            SpecFileGeneration("info->itext_keys == key", "lodepng_add_text_2.cpp", funSignature);
        }
        if (state.info_png.itext_strings == &str) {
            SpecFileGeneration("info->itext_strings == str", "lodepng_add_text_3.cpp", funSignature);
        }

        if (state.info_png.text_keys != NULL && key != NULL && (*state.info_png.text_keys, key) == 0) {
            SpecFileGeneration("strcmp(info->text_keys, key);", "lodepng_add_text_4.cpp", funSignature);
        }
        if (state.info_png.text_strings != NULL && str != NULL && strcmp(*state.info_png.text_strings, str) == 0) {
            SpecFileGeneration("strcmp(info->text_strings, str);", "lodepng_add_text_5.cpp", funSignature);
        }
        if (state.info_png.itext_keys != NULL && key != NULL && strcmp(*state.info_png.itext_keys, key) == 0) {
            SpecFileGeneration("strcmp(info->itext_keys, key);", "lodepng_add_text_6.cpp", funSignature);
        }
        if (state.info_png.itext_strings != NULL && str != NULL && strcmp(*state.info_png.itext_strings, str) == 0) {
            SpecFileGeneration("strcmp(info->itext_strings, str);", "lodepng_add_text_7.cpp", funSignature);
        }
        // Clean up
        lodepng_state_cleanup(&state);
    }

    return 0;
}
