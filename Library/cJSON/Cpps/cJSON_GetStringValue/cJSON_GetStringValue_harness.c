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

		cJSON *item0 = cJSON_Parse(strtok(buf, "\n"));
	
		char* result = cJSON_GetStringValue(item0);
		const char *funSignature = "char* cJSON_GetStringValue(arg)";
		
		if(item0 != NULL && result == item0 -> valuestring)
		{
			SpecFileGeneration("return item0 -> valuestring;", "cJSON_GetStringValue_0.cpp", funSignature);
		}
		if(item0 != NULL && result == item0 -> string)
		{
			SpecFileGeneration("return item0 -> string;", "cJSON_GetStringValue_1.cpp", funSignature);
		}
		cJSON_Delete(item0);
	}

	return 0;
}
