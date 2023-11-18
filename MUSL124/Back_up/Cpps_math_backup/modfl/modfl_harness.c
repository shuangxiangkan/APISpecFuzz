#include <math.h>
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

		long arg0;
		sscanf(strtok(buf, "\n"), "%ld", &arg0);

		long arg1;
//		sscanf(strtok(NULL, "\n"), "%ld", &arg1);

	
		long result = modfl(arg0, &arg1);
		const char *funSignature = "long modfl(long arg0, long* arg0)";
		
		if(result == arg1)
		{
			SpecFileGeneration("return *arg1;", "modfl_0.cpp", funSignature);
		}
		if(arg0 == arg1)
		{
			SpecFileGeneration("arg0 == *arg1;", "modfl_1.cpp", funSignature);
		}
	}

	return 0;
}
