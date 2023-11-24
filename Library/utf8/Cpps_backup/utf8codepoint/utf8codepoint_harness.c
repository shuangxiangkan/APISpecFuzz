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

		char *str = strtok(buf, "\n");
		int *out_codepoint;
		sscanf(strtok(NULL, "\n"), "%d", &out_codepoint);

	
		utf8_int8_t* result = utf8codepoint(str, out_codepoint);
		const char *funSignature = "utf8_int8_t* utf8codepoint(utf8_int8_t* str, utf8_int32_t* out_codepoint)";
		
		if(result == str)
		{
			SpecFileGeneration("return str;", "utf8codepoint_0.cpp", funSignature);
		}
	}

	return 0;
}
