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

		char *src = strtok(buf, "\n");
		char *reject = strtok(NULL, "\n");
	
		size_t result = utf8cspn(src, reject);
		const char *funSignature = "size_t utf8cspn(utf8_int8_t* src, utf8_int8_t* reject)";
		
		if(src == reject)
		{
			SpecFileGeneration("src == reject;", "utf8cspn_0.cpp", funSignature);
		}
	}

	return 0;
}
