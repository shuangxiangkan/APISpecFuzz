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
		char *name1 = strtok(NULL, "\n");
	
		cJSON* result = cJSON_AddArrayToObject(object0, name1);
		const char *funSignature = "cJSON* cJSON_AddArrayToObject(cJSON* object0, char* name0)";
		
		if(result == object0)
		{
			SpecFileGeneration("return object0;", "cJSON_AddArrayToObject_0.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> next)
		{
			SpecFileGeneration("return object0 -> next;", "cJSON_AddArrayToObject_1.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> prev)
		{
			SpecFileGeneration("return object0 -> prev;", "cJSON_AddArrayToObject_2.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> child)
		{
			SpecFileGeneration("return object0 -> child;", "cJSON_AddArrayToObject_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == object0)
		{
			SpecFileGeneration("result -> next == object0;", "cJSON_AddArrayToObject_4.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> next)
		{
			SpecFileGeneration("result -> next == object0 -> next;", "cJSON_AddArrayToObject_5.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> prev)
		{
			SpecFileGeneration("result -> next == object0 -> prev;", "cJSON_AddArrayToObject_6.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> child)
		{
			SpecFileGeneration("result -> next == object0 -> child;", "cJSON_AddArrayToObject_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == object0)
		{
			SpecFileGeneration("result -> prev == object0;", "cJSON_AddArrayToObject_8.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> next)
		{
			SpecFileGeneration("result -> prev == object0 -> next;", "cJSON_AddArrayToObject_9.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> prev)
		{
			SpecFileGeneration("result -> prev == object0 -> prev;", "cJSON_AddArrayToObject_10.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> child)
		{
			SpecFileGeneration("result -> prev == object0 -> child;", "cJSON_AddArrayToObject_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == object0)
		{
			SpecFileGeneration("result -> child == object0;", "cJSON_AddArrayToObject_12.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> next)
		{
			SpecFileGeneration("result -> child == object0 -> next;", "cJSON_AddArrayToObject_13.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> prev)
		{
			SpecFileGeneration("result -> child == object0 -> prev;", "cJSON_AddArrayToObject_14.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> child)
		{
			SpecFileGeneration("result -> child == object0 -> child;", "cJSON_AddArrayToObject_15.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == object0 -> valuestring;", "cJSON_AddArrayToObject_16.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> string)
		{
			SpecFileGeneration("result -> valuestring == object0 -> string;", "cJSON_AddArrayToObject_17.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> valuestring)
		{
			SpecFileGeneration("result -> string == object0 -> valuestring;", "cJSON_AddArrayToObject_18.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> string)
		{
			SpecFileGeneration("result -> string == object0 -> string;", "cJSON_AddArrayToObject_19.cpp", funSignature);
		}
		if(result != NULL && result -> valuestring == name1)
		{
			SpecFileGeneration("result -> valuestring == name1;", "cJSON_AddArrayToObject_20.cpp", funSignature);
		}
		if(result != NULL && result -> string == name1)
		{
			SpecFileGeneration("result -> string == name1;", "cJSON_AddArrayToObject_21.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> valuestring == name1)
		{
			SpecFileGeneration("object0 -> valuestring == name1;", "cJSON_AddArrayToObject_22.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == name1)
		{
			SpecFileGeneration("object0 -> string == name1;", "cJSON_AddArrayToObject_23.cpp", funSignature);
		}
		cJSON_Delete(object0);
	}

	return 0;
}
