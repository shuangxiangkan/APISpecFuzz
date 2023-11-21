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
		char *raw2 = strtok(NULL, "\n");
	
		cJSON* result = cJSON_AddRawToObject(object0, name1, raw2);
		const char *funSignature = "cJSON* cJSON_AddRawToObject(cJSON* object0, char* name0, char* raw0)";
		
		if(result == object0)
		{
			SpecFileGeneration("return object0;", "cJSON_AddRawToObject_0.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> next)
		{
			SpecFileGeneration("return object0 -> next;", "cJSON_AddRawToObject_1.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> prev)
		{
			SpecFileGeneration("return object0 -> prev;", "cJSON_AddRawToObject_2.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> child)
		{
			SpecFileGeneration("return object0 -> child;", "cJSON_AddRawToObject_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == object0)
		{
			SpecFileGeneration("result -> next == object0;", "cJSON_AddRawToObject_4.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> next)
		{
			SpecFileGeneration("result -> next == object0 -> next;", "cJSON_AddRawToObject_5.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> prev)
		{
			SpecFileGeneration("result -> next == object0 -> prev;", "cJSON_AddRawToObject_6.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> next == object0 -> child)
		{
			SpecFileGeneration("result -> next == object0 -> child;", "cJSON_AddRawToObject_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == object0)
		{
			SpecFileGeneration("result -> prev == object0;", "cJSON_AddRawToObject_8.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> next)
		{
			SpecFileGeneration("result -> prev == object0 -> next;", "cJSON_AddRawToObject_9.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> prev)
		{
			SpecFileGeneration("result -> prev == object0 -> prev;", "cJSON_AddRawToObject_10.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> prev == object0 -> child)
		{
			SpecFileGeneration("result -> prev == object0 -> child;", "cJSON_AddRawToObject_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == object0)
		{
			SpecFileGeneration("result -> child == object0;", "cJSON_AddRawToObject_12.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> next)
		{
			SpecFileGeneration("result -> child == object0 -> next;", "cJSON_AddRawToObject_13.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> prev)
		{
			SpecFileGeneration("result -> child == object0 -> prev;", "cJSON_AddRawToObject_14.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> child == object0 -> child)
		{
			SpecFileGeneration("result -> child == object0 -> child;", "cJSON_AddRawToObject_15.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == object0 -> valuestring;", "cJSON_AddRawToObject_16.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> valuestring == object0 -> string)
		{
			SpecFileGeneration("result -> valuestring == object0 -> string;", "cJSON_AddRawToObject_17.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> valuestring)
		{
			SpecFileGeneration("result -> string == object0 -> valuestring;", "cJSON_AddRawToObject_18.cpp", funSignature);
		}
		if(result != NULL && object0 != NULL && result != object0 && result -> string == object0 -> string)
		{
			SpecFileGeneration("result -> string == object0 -> string;", "cJSON_AddRawToObject_19.cpp", funSignature);
		}
		if(result != NULL && result -> valuestring == name1)
		{
			SpecFileGeneration("result -> valuestring == name1;", "cJSON_AddRawToObject_20.cpp", funSignature);
		}
		if(result != NULL && result -> string == name1)
		{
			SpecFileGeneration("result -> string == name1;", "cJSON_AddRawToObject_21.cpp", funSignature);
		}
		if(result != NULL && result -> valuestring == raw2)
		{
			SpecFileGeneration("result -> valuestring == raw2;", "cJSON_AddRawToObject_22.cpp", funSignature);
		}
		if(result != NULL && result -> string == raw2)
		{
			SpecFileGeneration("result -> string == raw2;", "cJSON_AddRawToObject_23.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> valuestring == name1)
		{
			SpecFileGeneration("object0 -> valuestring == name1;", "cJSON_AddRawToObject_24.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == name1)
		{
			SpecFileGeneration("object0 -> string == name1;", "cJSON_AddRawToObject_25.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> valuestring == raw2)
		{
			SpecFileGeneration("object0 -> valuestring == raw2;", "cJSON_AddRawToObject_26.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == raw2)
		{
			SpecFileGeneration("object0 -> string == raw2;", "cJSON_AddRawToObject_27.cpp", funSignature);
		}
		if(name1 == raw2)
		{
			SpecFileGeneration("name1 == raw2;", "cJSON_AddRawToObject_28.cpp", funSignature);
		}
		cJSON_Delete(object0);
	}

	return 0;
}
