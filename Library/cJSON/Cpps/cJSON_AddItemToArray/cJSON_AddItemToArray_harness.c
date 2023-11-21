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
		cJSON *item1 = cJSON_Parse(strtok(NULL, "\n"));
	
		cJSON_bool result = cJSON_AddItemToArray(array0, item1);
		const char *funSignature = "cJSON_bool cJSON_AddItemToArray(cJSON* array0, cJSON* item0)";
		
		if(array0 == item1)
		{
			SpecFileGeneration("array0 == item1;", "cJSON_AddItemToArray_0.cpp", funSignature);
		}
		if(item1 != NULL && array0 == item1 -> next)
		{
			SpecFileGeneration("array0 == item1 -> next;", "cJSON_AddItemToArray_1.cpp", funSignature);
		}
		if(item1 != NULL && array0 == item1 -> prev)
		{
			SpecFileGeneration("array0 == item1 -> prev;", "cJSON_AddItemToArray_2.cpp", funSignature);
		}
		if(item1 != NULL && array0 == item1 -> child)
		{
			SpecFileGeneration("array0 == item1 -> child;", "cJSON_AddItemToArray_3.cpp", funSignature);
		}
		if(array0 != NULL && array0 -> next == item1)
		{
			SpecFileGeneration("array0 -> next == item1;", "cJSON_AddItemToArray_4.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> next == item1 -> next)
		{
			SpecFileGeneration("array0 -> next == item1 -> next;", "cJSON_AddItemToArray_5.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> next == item1 -> prev)
		{
			SpecFileGeneration("array0 -> next == item1 -> prev;", "cJSON_AddItemToArray_6.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> next == item1 -> child)
		{
			SpecFileGeneration("array0 -> next == item1 -> child;", "cJSON_AddItemToArray_7.cpp", funSignature);
		}
		if(array0 != NULL && array0 -> prev == item1)
		{
			SpecFileGeneration("array0 -> prev == item1;", "cJSON_AddItemToArray_8.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> prev == item1 -> next)
		{
			SpecFileGeneration("array0 -> prev == item1 -> next;", "cJSON_AddItemToArray_9.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> prev == item1 -> prev)
		{
			SpecFileGeneration("array0 -> prev == item1 -> prev;", "cJSON_AddItemToArray_10.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> prev == item1 -> child)
		{
			SpecFileGeneration("array0 -> prev == item1 -> child;", "cJSON_AddItemToArray_11.cpp", funSignature);
		}
		if(array0 != NULL && array0 -> child == item1)
		{
			SpecFileGeneration("array0 -> child == item1;", "cJSON_AddItemToArray_12.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> child == item1 -> next)
		{
			SpecFileGeneration("array0 -> child == item1 -> next;", "cJSON_AddItemToArray_13.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> child == item1 -> prev)
		{
			SpecFileGeneration("array0 -> child == item1 -> prev;", "cJSON_AddItemToArray_14.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> child == item1 -> child)
		{
			SpecFileGeneration("array0 -> child == item1 -> child;", "cJSON_AddItemToArray_15.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> valuestring == item1 -> valuestring)
		{
			SpecFileGeneration("array0 -> valuestring == item1 -> valuestring;", "cJSON_AddItemToArray_16.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> valuestring == item1 -> string)
		{
			SpecFileGeneration("array0 -> valuestring == item1 -> string;", "cJSON_AddItemToArray_17.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> string == item1 -> valuestring)
		{
			SpecFileGeneration("array0 -> string == item1 -> valuestring;", "cJSON_AddItemToArray_18.cpp", funSignature);
		}
		if(array0 != NULL && item1 != NULL && array0 != item1 && array0 -> string == item1 -> string)
		{
			SpecFileGeneration("array0 -> string == item1 -> string;", "cJSON_AddItemToArray_19.cpp", funSignature);
		}
		cJSON_Delete(array0);
		cJSON_Delete(item1);
	}

	return 0;
}
