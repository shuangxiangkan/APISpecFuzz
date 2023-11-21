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

		cJSON *child0 = cJSON_Parse(strtok(buf, "\n"));
	
		cJSON* result = cJSON_CreateArrayReference(child0);
		const char *funSignature = "cJSON* cJSON_CreateArrayReference(arg)";
		
		if(result == child0)
		{
			SpecFileGeneration("return child0;", "cJSON_CreateArrayReference_0.cpp", funSignature);
		}
		if(child0 != NULL && result == child0 -> next)
		{
			SpecFileGeneration("return child0 -> next;", "cJSON_CreateArrayReference_1.cpp", funSignature);
		}
		if(child0 != NULL && result == child0 -> prev)
		{
			SpecFileGeneration("return child0 -> prev;", "cJSON_CreateArrayReference_2.cpp", funSignature);
		}
		if(child0 != NULL && result == child0 -> child)
		{
			SpecFileGeneration("return child0 -> child;", "cJSON_CreateArrayReference_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == child0)
		{
			SpecFileGeneration("result -> next == child0;", "cJSON_CreateArrayReference_4.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> next == child0 -> next)
		{
			SpecFileGeneration("result -> next == child0 -> next;", "cJSON_CreateArrayReference_5.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> next == child0 -> prev)
		{
			SpecFileGeneration("result -> next == child0 -> prev;", "cJSON_CreateArrayReference_6.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> next == child0 -> child)
		{
			SpecFileGeneration("result -> next == child0 -> child;", "cJSON_CreateArrayReference_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == child0)
		{
			SpecFileGeneration("result -> prev == child0;", "cJSON_CreateArrayReference_8.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> prev == child0 -> next)
		{
			SpecFileGeneration("result -> prev == child0 -> next;", "cJSON_CreateArrayReference_9.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> prev == child0 -> prev)
		{
			SpecFileGeneration("result -> prev == child0 -> prev;", "cJSON_CreateArrayReference_10.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> prev == child0 -> child)
		{
			SpecFileGeneration("result -> prev == child0 -> child;", "cJSON_CreateArrayReference_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == child0)
		{
			SpecFileGeneration("result -> child == child0;", "cJSON_CreateArrayReference_12.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> child == child0 -> next)
		{
			SpecFileGeneration("result -> child == child0 -> next;", "cJSON_CreateArrayReference_13.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> child == child0 -> prev)
		{
			SpecFileGeneration("result -> child == child0 -> prev;", "cJSON_CreateArrayReference_14.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> child == child0 -> child)
		{
			SpecFileGeneration("result -> child == child0 -> child;", "cJSON_CreateArrayReference_15.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> valuestring == child0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == child0 -> valuestring;", "cJSON_CreateArrayReference_16.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> valuestring == child0 -> string)
		{
			SpecFileGeneration("result -> valuestring == child0 -> string;", "cJSON_CreateArrayReference_17.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> string == child0 -> valuestring)
		{
			SpecFileGeneration("result -> string == child0 -> valuestring;", "cJSON_CreateArrayReference_18.cpp", funSignature);
		}
		if(result != NULL && child0 != NULL && result != child0 && result -> string == child0 -> string)
		{
			SpecFileGeneration("result -> string == child0 -> string;", "cJSON_CreateArrayReference_19.cpp", funSignature);
		}
		cJSON_Delete(child0);
	}

	return 0;
}
