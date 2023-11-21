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
		int prebuffer1;
		sscanf(strtok(NULL, "\n"), "%d", &prebuffer1);

		int fmt2;
		sscanf(strtok(NULL, "\n"), "%d", &fmt2);

	
		char* result = cJSON_PrintBuffered(item0, prebuffer1, fmt2);
		const char *funSignature = "char* cJSON_PrintBuffered(cJSON* item0, int prebuffer1, cJSON_bool fmt2)";
		
		if(item0 != NULL && result == item0 -> valuestring)
		{
			SpecFileGeneration("return item0 -> valuestring;", "cJSON_PrintBuffered_0.cpp", funSignature);
		}
		if(item0 != NULL && result == item0 -> string)
		{
			SpecFileGeneration("return item0 -> string;", "cJSON_PrintBuffered_1.cpp", funSignature);
		}
		cJSON_Delete(item0);
	}

	return 0;
}
