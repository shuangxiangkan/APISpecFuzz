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
	
		cJSON* result = cJSON_DetachItemFromObjectCaseSensitive(object0, string1);
		const char *funSignature = "cJSON* cJSON_DetachItemFromObjectCaseSensitive(cJSON* object0, char* string0)";
		
		if(result == object0)
		{
			SpecFileGeneration("return object0;", "cJSON_DetachItemFromObjectCaseSensitive_0.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> next)
		{
			SpecFileGeneration("return object0 -> next;", "cJSON_DetachItemFromObjectCaseSensitive_1.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> prev)
		{
			SpecFileGeneration("return object0 -> prev;", "cJSON_DetachItemFromObjectCaseSensitive_2.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> child)
		{
			SpecFileGeneration("return object0 -> child;", "cJSON_DetachItemFromObjectCaseSensitive_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == object0)
		{
			SpecFileGeneration("result -> next == object0;", "cJSON_DetachItemFromObjectCaseSensitive_4.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> next)
		{
			SpecFileGeneration("result -> next == object0 -> next;", "cJSON_DetachItemFromObjectCaseSensitive_5.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> prev)
		{
			SpecFileGeneration("result -> next == object0 -> prev;", "cJSON_DetachItemFromObjectCaseSensitive_6.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> child)
		{
			SpecFileGeneration("result -> next == object0 -> child;", "cJSON_DetachItemFromObjectCaseSensitive_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == object0)
		{
			SpecFileGeneration("result -> prev == object0;", "cJSON_DetachItemFromObjectCaseSensitive_8.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> next)
		{
			SpecFileGeneration("result -> prev == object0 -> next;", "cJSON_DetachItemFromObjectCaseSensitive_9.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> prev)
		{
			SpecFileGeneration("result -> prev == object0 -> prev;", "cJSON_DetachItemFromObjectCaseSensitive_10.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> child)
		{
			SpecFileGeneration("result -> prev == object0 -> child;", "cJSON_DetachItemFromObjectCaseSensitive_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == object0)
		{
			SpecFileGeneration("result -> child == object0;", "cJSON_DetachItemFromObjectCaseSensitive_12.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> next)
		{
			SpecFileGeneration("result -> child == object0 -> next;", "cJSON_DetachItemFromObjectCaseSensitive_13.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> prev)
		{
			SpecFileGeneration("result -> child == object0 -> prev;", "cJSON_DetachItemFromObjectCaseSensitive_14.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> child)
		{
			SpecFileGeneration("result -> child == object0 -> child;", "cJSON_DetachItemFromObjectCaseSensitive_15.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == object0 -> valuestring;", "cJSON_DetachItemFromObjectCaseSensitive_16.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> string)
		{
			SpecFileGeneration("result -> valuestring == object0 -> string;", "cJSON_DetachItemFromObjectCaseSensitive_17.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> valuestring)
		{
			SpecFileGeneration("result -> string == object0 -> valuestring;", "cJSON_DetachItemFromObjectCaseSensitive_18.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> string)
		{
			SpecFileGeneration("result -> string == object0 -> string;", "cJSON_DetachItemFromObjectCaseSensitive_19.cpp", funSignature);
		}
		if(result != NULL && result -> valuestring == string1)
		{
			SpecFileGeneration("result -> valuestring == string1;", "cJSON_DetachItemFromObjectCaseSensitive_20.cpp", funSignature);
		}
		if(result != NULL && result -> string == string1)
		{
			SpecFileGeneration("result -> string == string1;", "cJSON_DetachItemFromObjectCaseSensitive_21.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> valuestring == string1)
		{
			SpecFileGeneration("object0 -> valuestring == string1;", "cJSON_DetachItemFromObjectCaseSensitive_22.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == string1)
		{
			SpecFileGeneration("object0 -> string == string1;", "cJSON_DetachItemFromObjectCaseSensitive_23.cpp", funSignature);
		}
		cJSON_Delete(object0);
	}

	return 0;
}
