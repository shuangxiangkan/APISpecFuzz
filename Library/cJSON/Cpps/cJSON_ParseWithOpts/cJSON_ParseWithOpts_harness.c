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

		char *value0 = strtok(buf, "\n");
		char **return_parse_end1 = strtok(NULL, "\n");
		int require_null_terminated2;
		sscanf(strtok(NULL, "\n"), "%d", &require_null_terminated2);

	
		cJSON* result = cJSON_ParseWithOpts(value0, return_parse_end1, require_null_terminated2);
		const char *funSignature = "cJSON* cJSON_ParseWithOpts(char* value0, char** return_parse_end1, cJSON_bool require_null_terminated2)";
		
		if(result != NULL && result -> valuestring == value0)
		{
			SpecFileGeneration("result -> valuestring == value0;", "cJSON_ParseWithOpts_0.cpp", funSignature);
		}
		if(result != NULL && result -> string == value0)
		{
			SpecFileGeneration("result -> string == value0;", "cJSON_ParseWithOpts_1.cpp", funSignature);
		}
		if(result != NULL && result -> valuestring == *return_parse_end1)
		{
			SpecFileGeneration("result -> valuestring == *return_parse_end1;", "cJSON_ParseWithOpts_2.cpp", funSignature);
		}
		if(result != NULL && result -> string == *return_parse_end1)
		{
			SpecFileGeneration("result -> string == *return_parse_end1;", "cJSON_ParseWithOpts_3.cpp", funSignature);
		}
		if(value0 == *return_parse_end1)
		{
			SpecFileGeneration("value0 == *return_parse_end1;", "cJSON_ParseWithOpts_4.cpp", funSignature);
		}
	}

	return 0;
}
