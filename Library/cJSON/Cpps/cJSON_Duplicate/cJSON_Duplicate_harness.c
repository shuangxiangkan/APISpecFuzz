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
		int recurse1;
		sscanf(strtok(NULL, "\n"), "%d", &recurse1);

	
		cJSON* result = cJSON_Duplicate(item0, recurse1);
		const char *funSignature = "cJSON* cJSON_Duplicate(cJSON* item0, cJSON_bool recurse1)";
		
		if(result == item0)
		{
			SpecFileGeneration("return item0;", "cJSON_Duplicate_0.cpp", funSignature);
		}
		if(item0 != NULL && result == item0 -> next)
		{
			SpecFileGeneration("return item0 -> next;", "cJSON_Duplicate_1.cpp", funSignature);
		}
		if(item0 != NULL && result == item0 -> prev)
		{
			SpecFileGeneration("return item0 -> prev;", "cJSON_Duplicate_2.cpp", funSignature);
		}
		if(item0 != NULL && result == item0 -> child)
		{
			SpecFileGeneration("return item0 -> child;", "cJSON_Duplicate_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == item0)
		{
			SpecFileGeneration("result -> next == item0;", "cJSON_Duplicate_4.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> next == item0 -> next)
		{
			SpecFileGeneration("result -> next == item0 -> next;", "cJSON_Duplicate_5.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> next == item0 -> prev)
		{
			SpecFileGeneration("result -> next == item0 -> prev;", "cJSON_Duplicate_6.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> next == item0 -> child)
		{
			SpecFileGeneration("result -> next == item0 -> child;", "cJSON_Duplicate_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == item0)
		{
			SpecFileGeneration("result -> prev == item0;", "cJSON_Duplicate_8.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> prev == item0 -> next)
		{
			SpecFileGeneration("result -> prev == item0 -> next;", "cJSON_Duplicate_9.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> prev == item0 -> prev)
		{
			SpecFileGeneration("result -> prev == item0 -> prev;", "cJSON_Duplicate_10.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> prev == item0 -> child)
		{
			SpecFileGeneration("result -> prev == item0 -> child;", "cJSON_Duplicate_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == item0)
		{
			SpecFileGeneration("result -> child == item0;", "cJSON_Duplicate_12.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> child == item0 -> next)
		{
			SpecFileGeneration("result -> child == item0 -> next;", "cJSON_Duplicate_13.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> child == item0 -> prev)
		{
			SpecFileGeneration("result -> child == item0 -> prev;", "cJSON_Duplicate_14.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> child == item0 -> child)
		{
			SpecFileGeneration("result -> child == item0 -> child;", "cJSON_Duplicate_15.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> valuestring == item0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == item0 -> valuestring;", "cJSON_Duplicate_16.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> valuestring == item0 -> string)
		{
			SpecFileGeneration("result -> valuestring == item0 -> string;", "cJSON_Duplicate_17.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> string == item0 -> valuestring)
		{
			SpecFileGeneration("result -> string == item0 -> valuestring;", "cJSON_Duplicate_18.cpp", funSignature);
		}
		if(result != NULL && item0 != NULL && result != item0 && result -> string == item0 -> string)
		{
			SpecFileGeneration("result -> string == item0 -> string;", "cJSON_Duplicate_19.cpp", funSignature);
		}
		cJSON_Delete(item0);
	}

	return 0;
}
