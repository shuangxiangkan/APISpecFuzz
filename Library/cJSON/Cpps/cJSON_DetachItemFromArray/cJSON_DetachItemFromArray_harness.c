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
		int which1;
		sscanf(strtok(NULL, "\n"), "%d", &which1);

	
		cJSON* result = cJSON_DetachItemFromArray(array0, which1);
		const char *funSignature = "cJSON* cJSON_DetachItemFromArray(cJSON* array0, int which1)";
		
		if(result == array0)
		{
			SpecFileGeneration("return array0;", "cJSON_DetachItemFromArray_0.cpp", funSignature);
		}
		if(array0 != NULL && result == array0 -> next)
		{
			SpecFileGeneration("return array0 -> next;", "cJSON_DetachItemFromArray_1.cpp", funSignature);
		}
		if(array0 != NULL && result == array0 -> prev)
		{
			SpecFileGeneration("return array0 -> prev;", "cJSON_DetachItemFromArray_2.cpp", funSignature);
		}
		if(array0 != NULL && result == array0 -> child)
		{
			SpecFileGeneration("return array0 -> child;", "cJSON_DetachItemFromArray_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == array0)
		{
			SpecFileGeneration("result -> next == array0;", "cJSON_DetachItemFromArray_4.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> next == array0 -> next)
		{
			SpecFileGeneration("result -> next == array0 -> next;", "cJSON_DetachItemFromArray_5.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> next == array0 -> prev)
		{
			SpecFileGeneration("result -> next == array0 -> prev;", "cJSON_DetachItemFromArray_6.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> next == array0 -> child)
		{
			SpecFileGeneration("result -> next == array0 -> child;", "cJSON_DetachItemFromArray_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == array0)
		{
			SpecFileGeneration("result -> prev == array0;", "cJSON_DetachItemFromArray_8.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> prev == array0 -> next)
		{
			SpecFileGeneration("result -> prev == array0 -> next;", "cJSON_DetachItemFromArray_9.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> prev == array0 -> prev)
		{
			SpecFileGeneration("result -> prev == array0 -> prev;", "cJSON_DetachItemFromArray_10.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> prev == array0 -> child)
		{
			SpecFileGeneration("result -> prev == array0 -> child;", "cJSON_DetachItemFromArray_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == array0)
		{
			SpecFileGeneration("result -> child == array0;", "cJSON_DetachItemFromArray_12.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> child == array0 -> next)
		{
			SpecFileGeneration("result -> child == array0 -> next;", "cJSON_DetachItemFromArray_13.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> child == array0 -> prev)
		{
			SpecFileGeneration("result -> child == array0 -> prev;", "cJSON_DetachItemFromArray_14.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> child == array0 -> child)
		{
			SpecFileGeneration("result -> child == array0 -> child;", "cJSON_DetachItemFromArray_15.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> valuestring == array0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == array0 -> valuestring;", "cJSON_DetachItemFromArray_16.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> valuestring == array0 -> string)
		{
			SpecFileGeneration("result -> valuestring == array0 -> string;", "cJSON_DetachItemFromArray_17.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> string == array0 -> valuestring)
		{
			SpecFileGeneration("result -> string == array0 -> valuestring;", "cJSON_DetachItemFromArray_18.cpp", funSignature);
		}
		if(result != NULL && array0 != NULL && result != array0 && result -> string == array0 -> string)
		{
			SpecFileGeneration("result -> string == array0 -> string;", "cJSON_DetachItemFromArray_19.cpp", funSignature);
		}
		cJSON_Delete(array0);
	}

	return 0;
}
