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

		char *src1 = strtok(buf, "\n");
		char *src2 = strtok(NULL, "\n");
	
		int result = utf8cmp(src1, src2);
		const char *funSignature = "int utf8cmp(utf8_int8_t* src1, utf8_int8_t* src2)";
		
		if(src1 == src2)
		{
			SpecFileGeneration("src1 == src2;", "utf8cmp_0.cpp", funSignature);
		}
	}

	return 0;
}
