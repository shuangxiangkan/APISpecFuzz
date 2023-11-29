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

    while (__AFL_LOOP(1000)) {
        
        LodePNGInfo source_info, dest_info;

        // Initialize source and destination info structures
        lodepng_info_init(&source_info);
        lodepng_info_init(&dest_info);

        // Example: Set some values in the source info
        source_info.time_defined = 1; // Enable time chunk
        source_info.time.year = 2023;
        source_info.time.month = 4;
        source_info.time.day = 1;
        source_info.time.hour = 12;
        source_info.time.minute = 34;
        source_info.time.second = 56;

        // Copy the info from source to destination
        unsigned error = lodepng_info_copy(&dest_info, &source_info);

        // Clean up
        lodepng_info_cleanup(&source_info);
        lodepng_info_cleanup(&dest_info);

        const char *funSignature = "unsigned lodepng_info_copy(LodePNGInfo* dest, const LodePNGInfo* source)";

        if ( &dest_info == &source_info) {
            SpecFileGeneration("dest_info == source_info", "lodepng_info_copy_0.cpp", funSignature);
        }
        if (&dest_info != NULL && &source_info != NULL && memcmp(&dest_info, &source_info, sizeof(LodePNGInfo)) == 0) {
            SpecFileGeneration("memcmp(&dest_info, &source_info, sizeof(LodePNGInfo)) == 0", "lodepng_info_copy_1.cpp", funSignature);
        }
    }

    return 0;
}
