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

        LodePNGState source_state, dest_state;

        // Initialize the source state and set some of its properties
        lodepng_state_init(&source_state);
        source_state.encoder.zlibsettings.windowsize = 2048;
        source_state.info_raw.colortype = LCT_RGB;
        source_state.info_raw.bitdepth = 8;

        // Initialize the destination state
        lodepng_state_init(&dest_state);

        // Copy the state from source to destination
        lodepng_state_copy(&dest_state, &source_state);

        
        const char *funSignature = "void lodepng_state_copy(LodePNGState* dest, const LodePNGState* source)";

        if (&source_state == &dest_state) {
            SpecFileGeneration("source_state == dest_state;", "lodepng_state_copy_0.cpp", funSignature);
        }
        if (memcmp(&source_state, &dest_state, sizeof(LodePNGState)) == 0) {
            SpecFileGeneration("memcmp(&source_state, &dest_state, sizeof(LodePNGState));", "lodepng_state_copy_1.cpp", funSignature);
        }

        // Clean up
        lodepng_state_cleanup(&source_state);
        lodepng_state_cleanup(&dest_state);

    }

    return 0;
}
