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
		unsigned long n;
		sscanf(strtok(NULL, "\n"), "%lu", &n);

	
		int result = utf8ncmp(src1, src2, n);
		const char *funSignature = "int utf8ncmp(utf8_int8_t* src1, utf8_int8_t* src2, size_t n)";
		
		if(src1 == src2)
		{
			SpecFileGeneration("src1 == src2;", "utf8ncmp_0.cpp", funSignature);
		}
	}

	return 0;
}
