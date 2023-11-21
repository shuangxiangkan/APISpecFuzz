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

		int *numbers0;
		sscanf(strtok(NULL, "\n"), "%d", &numbers0);

		int count1;
		sscanf(strtok(NULL, "\n"), "%d", &count1);

	
		cJSON* result = cJSON_CreateIntArray(numbers0, count1);
		const char *funSignature = "cJSON* cJSON_CreateIntArray(int* numbers0, int count1)";
		
		if(result != NULL && result -> type == *numbers0)
		{
			SpecFileGeneration("result -> type == *numbers0;", "cJSON_CreateIntArray_0.cpp", funSignature);
		}
		if(result != NULL && result -> valueint == *numbers0)
		{
			SpecFileGeneration("result -> valueint == *numbers0;", "cJSON_CreateIntArray_1.cpp", funSignature);
		}
		if(*numbers0 == count1)
		{
			SpecFileGeneration("*numbers0 == count1;", "cJSON_CreateIntArray_2.cpp", funSignature);
		}
	}

	return 0;
}
