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

		char **arg0 = strtok(buf, "\n");
		char **arg1 = strtok(NULL, "\n");
		char **arg2 = strtok(NULL, "\n");
	
		int result = getsubopt(arg0, arg1, arg2);
		const char *funSignature = "int getsubopt(char** arg1, char** arg1, char** arg1)";
		
		if(arg0 == arg1)
		{
			SpecFileGeneration("arg0 == arg1;", "getsubopt_0.cpp", funSignature);
		}
		if(arg0 == arg2)
		{
			SpecFileGeneration("arg0 == arg2;", "getsubopt_1.cpp", funSignature);
		}
		if(arg1 == arg2)
		{
			SpecFileGeneration("arg1 == arg2;", "getsubopt_2.cpp", funSignature);
		}
	}

	return 0;
}
