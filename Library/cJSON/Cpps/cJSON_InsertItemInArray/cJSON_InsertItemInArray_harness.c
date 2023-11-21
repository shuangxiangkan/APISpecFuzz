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

		cJSON *newitem2 = cJSON_Parse(strtok(NULL, "\n"));
	
		cJSON_bool result = cJSON_InsertItemInArray(array0, which1, newitem2);
		const char *funSignature = "cJSON_bool cJSON_InsertItemInArray(cJSON* array0, int which1, cJSON* newitem0)";
		
		if(array0 == newitem2)
		{
			SpecFileGeneration("array0 == newitem2;", "cJSON_InsertItemInArray_0.cpp", funSignature);
		}
		if(newitem2 != NULL && array0 == newitem2 -> next)
		{
			SpecFileGeneration("array0 == newitem2 -> next;", "cJSON_InsertItemInArray_1.cpp", funSignature);
		}
		if(newitem2 != NULL && array0 == newitem2 -> prev)
		{
			SpecFileGeneration("array0 == newitem2 -> prev;", "cJSON_InsertItemInArray_2.cpp", funSignature);
		}
		if(newitem2 != NULL && array0 == newitem2 -> child)
		{
			SpecFileGeneration("array0 == newitem2 -> child;", "cJSON_InsertItemInArray_3.cpp", funSignature);
		}
		if(array0 != NULL && array0 -> next == newitem2)
		{
			SpecFileGeneration("array0 -> next == newitem2;", "cJSON_InsertItemInArray_4.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> next == newitem2 -> next)
		{
			SpecFileGeneration("array0 -> next == newitem2 -> next;", "cJSON_InsertItemInArray_5.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> next == newitem2 -> prev)
		{
			SpecFileGeneration("array0 -> next == newitem2 -> prev;", "cJSON_InsertItemInArray_6.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> next == newitem2 -> child)
		{
			SpecFileGeneration("array0 -> next == newitem2 -> child;", "cJSON_InsertItemInArray_7.cpp", funSignature);
		}
		if(array0 != NULL && array0 -> prev == newitem2)
		{
			SpecFileGeneration("array0 -> prev == newitem2;", "cJSON_InsertItemInArray_8.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> prev == newitem2 -> next)
		{
			SpecFileGeneration("array0 -> prev == newitem2 -> next;", "cJSON_InsertItemInArray_9.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> prev == newitem2 -> prev)
		{
			SpecFileGeneration("array0 -> prev == newitem2 -> prev;", "cJSON_InsertItemInArray_10.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> prev == newitem2 -> child)
		{
			SpecFileGeneration("array0 -> prev == newitem2 -> child;", "cJSON_InsertItemInArray_11.cpp", funSignature);
		}
		if(array0 != NULL && array0 -> child == newitem2)
		{
			SpecFileGeneration("array0 -> child == newitem2;", "cJSON_InsertItemInArray_12.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> child == newitem2 -> next)
		{
			SpecFileGeneration("array0 -> child == newitem2 -> next;", "cJSON_InsertItemInArray_13.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> child == newitem2 -> prev)
		{
			SpecFileGeneration("array0 -> child == newitem2 -> prev;", "cJSON_InsertItemInArray_14.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> child == newitem2 -> child)
		{
			SpecFileGeneration("array0 -> child == newitem2 -> child;", "cJSON_InsertItemInArray_15.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> valuestring == newitem2 -> valuestring)
		{
			SpecFileGeneration("array0 -> valuestring == newitem2 -> valuestring;", "cJSON_InsertItemInArray_16.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> valuestring == newitem2 -> string)
		{
			SpecFileGeneration("array0 -> valuestring == newitem2 -> string;", "cJSON_InsertItemInArray_17.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> string == newitem2 -> valuestring)
		{
			SpecFileGeneration("array0 -> string == newitem2 -> valuestring;", "cJSON_InsertItemInArray_18.cpp", funSignature);
		}
		if(array0 != NULL && newitem2 != NULL && array0 != newitem2 && array0 -> string == newitem2 -> string)
		{
			SpecFileGeneration("array0 -> string == newitem2 -> string;", "cJSON_InsertItemInArray_19.cpp", funSignature);
		}
		cJSON_Delete(array0);
		cJSON_Delete(newitem2);
	}

	return 0;
}
