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

		int arg0;
		sscanf(strtok(NULL, "\n"), "%d", &arg0);

		char *arg1 = strtok(NULL, "\n");
		int arg2;
		sscanf(strtok(NULL, "\n"), "%d", &arg2);

		char *arg3 = strtok(NULL, "\n");
	
		int result = renameat(arg0, arg1, arg2, arg3);
		const char *funSignature = "int renameat(int arg0, char* arg0, int arg2, char* arg0)";
		
		if(arg1 == arg3)
		{
			SpecFileGeneration("arg1 == arg3;", "renameat_0.cpp", funSignature);
		}
	}

	return 0;
}
