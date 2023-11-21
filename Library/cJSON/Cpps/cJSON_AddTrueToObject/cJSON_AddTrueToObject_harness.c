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
	
		cJSON* result = cJSON_AddTrueToObject(object0, name1);
		const char *funSignature = "cJSON* cJSON_AddTrueToObject(cJSON* object0, char* name0)";
		
		if(result == object0)
		{
			SpecFileGeneration("return object0;", "cJSON_AddTrueToObject_0.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> next)
		{
			SpecFileGeneration("return object0 -> next;", "cJSON_AddTrueToObject_1.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> prev)
		{
			SpecFileGeneration("return object0 -> prev;", "cJSON_AddTrueToObject_2.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> child)
		{
			SpecFileGeneration("return object0 -> child;", "cJSON_AddTrueToObject_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == object0)
		{
			SpecFileGeneration("result -> next == object0;", "cJSON_AddTrueToObject_4.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> next)
		{
			SpecFileGeneration("result -> next == object0 -> next;", "cJSON_AddTrueToObject_5.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> prev)
		{
			SpecFileGeneration("result -> next == object0 -> prev;", "cJSON_AddTrueToObject_6.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> child)
		{
			SpecFileGeneration("result -> next == object0 -> child;", "cJSON_AddTrueToObject_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == object0)
		{
			SpecFileGeneration("result -> prev == object0;", "cJSON_AddTrueToObject_8.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> next)
		{
			SpecFileGeneration("result -> prev == object0 -> next;", "cJSON_AddTrueToObject_9.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> prev)
		{
			SpecFileGeneration("result -> prev == object0 -> prev;", "cJSON_AddTrueToObject_10.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> child)
		{
			SpecFileGeneration("result -> prev == object0 -> child;", "cJSON_AddTrueToObject_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == object0)
		{
			SpecFileGeneration("result -> child == object0;", "cJSON_AddTrueToObject_12.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> next)
		{
			SpecFileGeneration("result -> child == object0 -> next;", "cJSON_AddTrueToObject_13.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> prev)
		{
			SpecFileGeneration("result -> child == object0 -> prev;", "cJSON_AddTrueToObject_14.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> child)
		{
			SpecFileGeneration("result -> child == object0 -> child;", "cJSON_AddTrueToObject_15.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == object0 -> valuestring;", "cJSON_AddTrueToObject_16.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> string)
		{
			SpecFileGeneration("result -> valuestring == object0 -> string;", "cJSON_AddTrueToObject_17.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> valuestring)
		{
			SpecFileGeneration("result -> string == object0 -> valuestring;", "cJSON_AddTrueToObject_18.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> string)
		{
			SpecFileGeneration("result -> string == object0 -> string;", "cJSON_AddTrueToObject_19.cpp", funSignature);
		}
		if(result != NULL && result -> valuestring == name1)
		{
			SpecFileGeneration("result -> valuestring == name1;", "cJSON_AddTrueToObject_20.cpp", funSignature);
		}
		if(result != NULL && result -> string == name1)
		{
			SpecFileGeneration("result -> string == name1;", "cJSON_AddTrueToObject_21.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> valuestring == name1)
		{
			SpecFileGeneration("object0 -> valuestring == name1;", "cJSON_AddTrueToObject_22.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == name1)
		{
			SpecFileGeneration("object0 -> string == name1;", "cJSON_AddTrueToObject_23.cpp", funSignature);
		}
		cJSON_Delete(object0);
	}

	return 0;
}
