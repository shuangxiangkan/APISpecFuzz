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

        const char* icc_name = strtok(buf, "\n");

        LodePNGInfo info;
        lodepng_info_init(&info);

        // Example ICC profile data (normally you would load this from a file or have real data)
        const unsigned char icc_profile_data[] = {0, 1, 2, 3, 4, 5}; // Dummy data
        unsigned profile_size = sizeof(icc_profile_data);

        // Setting the ICC profile
        // const char* icc_name = "ExampleICC";
        unsigned error = lodepng_set_icc(&info, icc_name, icc_profile_data, profile_size);
        

        const char *funSignature = "unsigned lodepng_set_icc(LodePNGInfo* info, const char* name, const unsigned char* profile, unsigned profile_size)";

        if (info.iccp_name != NULL && icc_name != NULL && strcmp(info.iccp_name, icc_name) == 0) {
            SpecFileGeneration("strcmp(info->icc_name, name);", "lodepng_set_icc_0.cpp", funSignature);
        }
        if (info.iccp_profile != NULL && icc_profile_data != NULL && memcmp(info.iccp_profile, icc_profile_data, profile_size) == 0) {
            SpecFileGeneration("memcmp(info->icc_profile, profile, profile_size);", "lodepng_set_icc_1.cpp", funSignature);
        }
        // Clean up
        lodepng_info_cleanup(&info);
    }

    return 0;
}
