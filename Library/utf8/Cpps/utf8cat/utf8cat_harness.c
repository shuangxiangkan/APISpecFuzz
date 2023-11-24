#include "utf8.h"
#include <string.h>
#include <stdio.h>

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
	while (__AFL_LOOP(1000)) 
	{
		memset(buf, 0, sizeof(buf));
		if (read(0, buf, sizeof(buf)) < 0) {
			return 1;
		}

		char *dst = strtok(buf, "\n");
		char *src = strtok(NULL, "\n");
	
		utf8_int8_t* result = utf8cat(dst, src);
		const char *funSignature = "utf8_int8_t* utf8cat(utf8_int8_t* dst, utf8_int8_t* src)";
		
		if(result == dst)
		{
			SpecFileGeneration("return dst;", "utf8cat_0.cpp", funSignature);
		}
		if(result == src)
		{
			SpecFileGeneration("return src;", "utf8cat_1.cpp", funSignature);
		}
		if(dst == src)
		{
			SpecFileGeneration("dst == src;", "utf8cat_2.cpp", funSignature);
		}
	}

	return 0;
}
