#include "cJSON.h"
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

		char *raw0 = strtok(buf, "\n");
	
		cJSON* result = cJSON_CreateRaw(raw0);
		const char *funSignature = "cJSON* cJSON_CreateRaw(arg)";
		
		if(result != NULL && result -> valuestring == raw0)
		{
			SpecFileGeneration("result -> valuestring == raw0;", "cJSON_CreateRaw_0.cpp", funSignature);
		}
		if(result != NULL && result -> string == raw0)
		{
			SpecFileGeneration("result -> string == raw0;", "cJSON_CreateRaw_1.cpp", funSignature);
		}
	}

	return 0;
}
