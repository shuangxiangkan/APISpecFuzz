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

		cJSON *array0 = cJSON_Parse(strtok(buf, "\n"));
		int index1;
		sscanf(strtok(NULL, "\n"), "%d", &index1);

	
		cJSON* result = cJSON_GetArrayItem(array0, index1);
		const char *funSignature = "cJSON* cJSON_GetArrayItem(cJSON* array0, int index1)";
		
		if(result == array0)
		{
			SpecFileGeneration("return array0;", "cJSON_GetArrayItem_0.cpp", funSignature);
		}
		if(array0 != NULL && result == array0 -> next)
		{
			SpecFileGeneration("return array0 -> next;", "cJSON_GetArrayItem_1.cpp", funSignature);
		}
		if(array0 != NULL && result == array0 -> prev)
		{
			SpecFileGeneration("return array0 -> prev;", "cJSON_GetArrayItem_2.cpp", funSignature);
		}
		if(array0 != NULL && result == array0 -> child)
		{
			SpecFileGeneration("return array0 -> child;", "cJSON_GetArrayItem_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == array0)
		{
			SpecFileGeneration("result -> next == array0;", "cJSON_GetArrayItem_4.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> next == array0 -> next)
		{
			SpecFileGeneration("result -> next == array0 -> next;", "cJSON_GetArrayItem_5.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> next == array0 -> prev)
		{
			SpecFileGeneration("result -> next == array0 -> prev;", "cJSON_GetArrayItem_6.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> next == array0 -> child)
		{
			SpecFileGeneration("result -> next == array0 -> child;", "cJSON_GetArrayItem_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == array0)
		{
			SpecFileGeneration("result -> prev == array0;", "cJSON_GetArrayItem_8.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> prev == array0 -> next)
		{
			SpecFileGeneration("result -> prev == array0 -> next;", "cJSON_GetArrayItem_9.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> prev == array0 -> prev)
		{
			SpecFileGeneration("result -> prev == array0 -> prev;", "cJSON_GetArrayItem_10.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> prev == array0 -> child)
		{
			SpecFileGeneration("result -> prev == array0 -> child;", "cJSON_GetArrayItem_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == array0)
		{
			SpecFileGeneration("result -> child == array0;", "cJSON_GetArrayItem_12.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> child == array0 -> next)
		{
			SpecFileGeneration("result -> child == array0 -> next;", "cJSON_GetArrayItem_13.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> child == array0 -> prev)
		{
			SpecFileGeneration("result -> child == array0 -> prev;", "cJSON_GetArrayItem_14.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> child == array0 -> child)
		{
			SpecFileGeneration("result -> child == array0 -> child;", "cJSON_GetArrayItem_15.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> valuestring == array0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == array0 -> valuestring;", "cJSON_GetArrayItem_16.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> valuestring == array0 -> string)
		{
			SpecFileGeneration("result -> valuestring == array0 -> string;", "cJSON_GetArrayItem_17.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> string == array0 -> valuestring)
		{
			SpecFileGeneration("result -> string == array0 -> valuestring;", "cJSON_GetArrayItem_18.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> string == array0 -> string)
		{
			SpecFileGeneration("result -> string == array0 -> string;", "cJSON_GetArrayItem_19.cpp", funSignature);
		}
		cJSON_Delete(array0);
	}

	return 0;
}
