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

		cJSON *object0 = cJSON_Parse(strtok(buf, "\n"));
		char *string1 = strtok(NULL, "\n");
	
		 cJSON_DeleteItemFromObject(object0, string1);
		const char *funSignature = "void cJSON_DeleteItemFromObject(cJSON* object0, char* string0)";
		
		if(object0 != NULL && object0 -> valuestring == string1)
		{
			SpecFileGeneration("object0 -> valuestring == string1;", "cJSON_DeleteItemFromObject_0.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == string1)
		{
			SpecFileGeneration("object0 -> string == string1;", "cJSON_DeleteItemFromObject_1.cpp", funSignature);
		}
		cJSON_Delete(object0);
	}

	return 0;
}
