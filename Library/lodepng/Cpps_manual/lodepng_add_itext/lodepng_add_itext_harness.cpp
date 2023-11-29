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

        LodePNGInfo info;
        lodepng_info_init(&info);

        // Adding an international text chunk
        const char* key = strtok(buf, "\n");
        const char* langtag = strtok(NULL, "\n");
        const char* transkey = strtok(NULL, "\n");
        const char* str = strtok(NULL, "\n");
        
        unsigned error = lodepng_add_itext(&info, key, langtag, transkey, str);


        const char *funSignature = "unsigned lodepng_add_itext(LodePNGInfo* info, const char* key, const char* langtag, const char* transkey, const char* str)";

        if (info.itext_keys != NULL && key != NULL && info.itext_keys == &key) {
            SpecFileGeneration("info->text_keys == key;", "lodepng_add_itext_0.cpp", funSignature);
        }
        if (info.itext_strings != NULL && str != NULL && info.itext_strings == &str) {
            SpecFileGeneration("info->text_strings == str;", "lodepng_add_itext_1.cpp", funSignature);
        }
        if (info.itext_langtags != NULL && langtag != NULL && info.itext_langtags == &langtag) {
            SpecFileGeneration("info->itext_keys == key;", "lodepng_add_itext_2.cpp", funSignature);
        }
        if (info.itext_transkeys != NULL && str != NULL && info.itext_transkeys == &transkey) {
            SpecFileGeneration("info->itext_strings == str;", "lodepng_add_itext_3.cpp", funSignature);
        }

        if (info.itext_keys != NULL && *info.itext_keys != NULL && key != NULL && strcmp(*info.text_keys, key) == 0) {
            SpecFileGeneration("strcmp(info->text_keys, key);", "lodepng_add_itext4.cpp", funSignature);
        }
        if (info.itext_strings != NULL && *info.itext_strings != NULL && str != NULL && strcmp(*info.itext_strings, str) == 0) {
            SpecFileGeneration("strcmp(info->text_strings, str);", "lodepng_add_itext_5.cpp", funSignature);
        }
        if (info.itext_langtags != NULL && *info.itext_langtags != NULL && langtag != NULL && strcmp(*info.itext_langtags, langtag) == 0) {
            SpecFileGeneration("strcmp(info->itext_keys, key);", "lodepng_add_itext_6.cpp", funSignature);
        }
        if (info.itext_transkeys != NULL &&  *info.itext_transkeys != NULL && str != NULL && strcmp(*info.itext_transkeys, str) == 0) {
            SpecFileGeneration("strcmp(info->itext_strings, str);", "lodepng_add_itext_7.cpp", funSignature);
        }
        // Clean up
        lodepng_info_cleanup(&info);
    }

    return 0;
}
