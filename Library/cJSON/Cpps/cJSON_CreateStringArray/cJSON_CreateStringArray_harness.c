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

		char **strings0 = strtok(buf, "\n");
		int count1;
		sscanf(strtok(NULL, "\n"), "%d", &count1);

	
		cJSON* result = cJSON_CreateStringArray(strings0, count1);
		const char *funSignature = "cJSON* cJSON_CreateStringArray(char** strings1, int count1)";
		
		if(result != NULL && result -> valuestring == *strings0)
		{
			SpecFileGeneration("result -> valuestring == *strings0;", "cJSON_CreateStringArray_0.cpp", funSignature);
		}
		if(result != NULL && result -> string == *strings0)
		{
			SpecFileGeneration("result -> string == *strings0;", "cJSON_CreateStringArray_1.cpp", funSignature);
		}
	}

	return 0;
}
