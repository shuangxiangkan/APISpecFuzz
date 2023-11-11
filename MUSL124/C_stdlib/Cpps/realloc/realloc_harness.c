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

		void *arg0 = strtok(buf, "\n");
		unsigned long arg1;
		sscanf(strtok(NULL, "\n"), "%lu", &arg1);

	
		void* result = realloc(arg0, arg1);
		const char *funSignature = "void* realloc(void* arg0, size_t arg1)";
		
		if(result == arg0)
		{
			SpecFileGeneration("return arg0;", "realloc_0.cpp", funSignature);
		}
	}

	return 0;
}
