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

		void *arg0 = strtok(buf, "\n");
		void *arg1 = strtok(NULL, "\n");
		unsigned long arg2;
		sscanf(strtok(NULL, "\n"), "%lu", &arg2);

	
		int result = memcmp(arg0, arg1, arg2);
		const char *funSignature = "int memcmp(void* arg0, void* arg0, size_t arg2)";
		
		if(arg0 == arg1)
		{
			SpecFileGeneration("arg0 = arg1", "memcmp_0.cpp", funSignature);
		}
	}

	return 0;
}
