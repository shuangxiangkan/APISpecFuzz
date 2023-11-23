#include <stdio.h>
#include <magic.h>
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

int main() 
{
    char buf[1024];
	while (__AFL_LOOP(1000))
	{
		memset(buf, 0, sizeof(buf));
		if (read(0, buf, sizeof(buf)) < 0) {
			return 1;
		}

		const char *magicfile = strtok(buf, "\n");

		const char * result = magic_getpath(magicfile, MAGIC_NONE);
		const char *funSignature = "const char *magic_getpath(const char *magicfile, int action)";

		if(result == magicfile) {
			SpecFileGeneration("return magicfile", "magic_getpath_0.cpp", funSignature);
		}
	}

	return 0;
}