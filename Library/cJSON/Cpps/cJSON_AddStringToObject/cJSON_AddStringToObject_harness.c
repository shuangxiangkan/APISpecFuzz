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
		char *string2 = strtok(NULL, "\n");
	
		cJSON* result = cJSON_AddStringToObject(object0, name1, string2);
		const char *funSignature = "cJSON* cJSON_AddStringToObject(cJSON* object0, char* name0, char* string0)";
		
		if(result == object0)
		{
			SpecFileGeneration("return object0;", "cJSON_AddStringToObject_0.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> next)
		{
			SpecFileGeneration("return object0 -> next;", "cJSON_AddStringToObject_1.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> prev)
		{
			SpecFileGeneration("return object0 -> prev;", "cJSON_AddStringToObject_2.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> child)
		{
			SpecFileGeneration("return object0 -> child;", "cJSON_AddStringToObject_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == object0)
		{
			SpecFileGeneration("result -> next == object0;", "cJSON_AddStringToObject_4.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> next)
		{
			SpecFileGeneration("result -> next == object0 -> next;", "cJSON_AddStringToObject_5.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> prev)
		{
			SpecFileGeneration("result -> next == object0 -> prev;", "cJSON_AddStringToObject_6.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> child)
		{
			SpecFileGeneration("result -> next == object0 -> child;", "cJSON_AddStringToObject_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == object0)
		{
			SpecFileGeneration("result -> prev == object0;", "cJSON_AddStringToObject_8.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> next)
		{
			SpecFileGeneration("result -> prev == object0 -> next;", "cJSON_AddStringToObject_9.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> prev)
		{
			SpecFileGeneration("result -> prev == object0 -> prev;", "cJSON_AddStringToObject_10.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> child)
		{
			SpecFileGeneration("result -> prev == object0 -> child;", "cJSON_AddStringToObject_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == object0)
		{
			SpecFileGeneration("result -> child == object0;", "cJSON_AddStringToObject_12.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> next)
		{
			SpecFileGeneration("result -> child == object0 -> next;", "cJSON_AddStringToObject_13.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> prev)
		{
			SpecFileGeneration("result -> child == object0 -> prev;", "cJSON_AddStringToObject_14.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> child)
		{
			SpecFileGeneration("result -> child == object0 -> child;", "cJSON_AddStringToObject_15.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == object0 -> valuestring;", "cJSON_AddStringToObject_16.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> string)
		{
			SpecFileGeneration("result -> valuestring == object0 -> string;", "cJSON_AddStringToObject_17.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> valuestring)
		{
			SpecFileGeneration("result -> string == object0 -> valuestring;", "cJSON_AddStringToObject_18.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> string)
		{
			SpecFileGeneration("result -> string == object0 -> string;", "cJSON_AddStringToObject_19.cpp", funSignature);
		}
		if(result != NULL && result -> valuestring == name1)
		{
			SpecFileGeneration("result -> valuestring == name1;", "cJSON_AddStringToObject_20.cpp", funSignature);
		}
		if(result != NULL && result -> string == name1)
		{
			SpecFileGeneration("result -> string == name1;", "cJSON_AddStringToObject_21.cpp", funSignature);
		}
		if(result != NULL && result -> valuestring == string2)
		{
			SpecFileGeneration("result -> valuestring == string2;", "cJSON_AddStringToObject_22.cpp", funSignature);
		}
		if(result != NULL && result -> string == string2)
		{
			SpecFileGeneration("result -> string == string2;", "cJSON_AddStringToObject_23.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> valuestring == name1)
		{
			SpecFileGeneration("object0 -> valuestring == name1;", "cJSON_AddStringToObject_24.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == name1)
		{
			SpecFileGeneration("object0 -> string == name1;", "cJSON_AddStringToObject_25.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> valuestring == string2)
		{
			SpecFileGeneration("object0 -> valuestring == string2;", "cJSON_AddStringToObject_26.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == string2)
		{
			SpecFileGeneration("object0 -> string == string2;", "cJSON_AddStringToObject_27.cpp", funSignature);
		}
		if(name1 == string2)
		{
			SpecFileGeneration("name1 == string2;", "cJSON_AddStringToObject_28.cpp", funSignature);
		}
		cJSON_Delete(object0);
	}

	return 0;
}
