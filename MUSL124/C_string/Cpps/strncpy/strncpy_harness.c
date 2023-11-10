#include <stdio.h>
#include <string.h>

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
		fprintf(file, "%s\n", specification);
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

		char *arg0 = strtok(buf, "\n");
		char *arg1 = strtok(NULL, "\n");
		unsigned long arg2;
		sscanf(strtok(NULL, "\n"), "%lu", &arg2);

	
		char* result = strncpy(arg0, arg1, arg2);
		const char *funSignature = "char* strncpy(char* arg0, char* arg0, size_t arg2)";
		
		if(result == arg0)
		{
			SpecFileGeneration("return arg0", "strncpy_0.cpp", funSignature);
		}
		if(result == arg1)
		{
			SpecFileGeneration("return arg1", "strncpy_1.cpp", funSignature);
		}
		if(arg0 == arg1)
		{
			SpecFileGeneration("arg0 = arg1", "strncpy_2.cpp", funSignature);
		}
	}

	return 0;
}
