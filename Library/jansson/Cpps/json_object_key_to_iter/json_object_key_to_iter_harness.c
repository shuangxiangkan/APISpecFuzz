#include "jansson.h"
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

		char *key = strtok(buf, "\n");
	
		void* result = json_object_key_to_iter(key);
		const char *funSignature = "void* json_object_key_to_iter(arg)";
		
		if(result == key)
		{
			SpecFileGeneration("return key;", "json_object_key_to_iter_0.cpp", funSignature);
		}
	}

	return 0;
}
