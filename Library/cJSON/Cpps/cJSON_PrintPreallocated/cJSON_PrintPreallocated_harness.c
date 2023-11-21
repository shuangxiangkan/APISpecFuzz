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
		char *buffer1 = strtok(NULL, "\n");
		int length2;
		sscanf(strtok(NULL, "\n"), "%d", &length2);

		int format3;
		sscanf(strtok(NULL, "\n"), "%d", &format3);

	
		cJSON_bool result = cJSON_PrintPreallocated(item0, buffer1, length2, format3);
		const char *funSignature = "cJSON_bool cJSON_PrintPreallocated(cJSON* item0, char* buffer0, int length2, cJSON_bool format3)";
		
		if(item0 != NULL && item0 -> valuestring == buffer1)
		{
			SpecFileGeneration("item0 -> valuestring == buffer1;", "cJSON_PrintPreallocated_0.cpp", funSignature);
		}
		if(item0 != NULL && item0 -> string == buffer1)
		{
			SpecFileGeneration("item0 -> string == buffer1;", "cJSON_PrintPreallocated_1.cpp", funSignature);
		}
		cJSON_Delete(item0);
	}

	return 0;
}
