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
		cJSON *newitem2 = cJSON_Parse(strtok(NULL, "\n"));
	
		cJSON_bool result = cJSON_ReplaceItemInObject(object0, string1, newitem2);
		const char *funSignature = "cJSON_bool cJSON_ReplaceItemInObject(cJSON* object0, char* string0, cJSON* newitem0)";
		
		if(object0 != NULL && object0 -> valuestring == string1)
		{
			SpecFileGeneration("object0 -> valuestring == string1;", "cJSON_ReplaceItemInObject_0.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == string1)
		{
			SpecFileGeneration("object0 -> string == string1;", "cJSON_ReplaceItemInObject_1.cpp", funSignature);
		}
		if(object0 == newitem2)
		{
			SpecFileGeneration("object0 == newitem2;", "cJSON_ReplaceItemInObject_2.cpp", funSignature);
		}
		if(newitem2 != NULL && object0 == newitem2 -> next)
		{
			SpecFileGeneration("object0 == newitem2 -> next;", "cJSON_ReplaceItemInObject_3.cpp", funSignature);
		}
		if(newitem2 != NULL && object0 == newitem2 -> prev)
		{
			SpecFileGeneration("object0 == newitem2 -> prev;", "cJSON_ReplaceItemInObject_4.cpp", funSignature);
		}
		if(newitem2 != NULL && object0 == newitem2 -> child)
		{
			SpecFileGeneration("object0 == newitem2 -> child;", "cJSON_ReplaceItemInObject_5.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> next == newitem2)
		{
			SpecFileGeneration("object0 -> next == newitem2;", "cJSON_ReplaceItemInObject_6.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> next == newitem2 -> next)
		{
			SpecFileGeneration("object0 -> next == newitem2 -> next;", "cJSON_ReplaceItemInObject_7.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> next == newitem2 -> prev)
		{
			SpecFileGeneration("object0 -> next == newitem2 -> prev;", "cJSON_ReplaceItemInObject_8.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> next == newitem2 -> child)
		{
			SpecFileGeneration("object0 -> next == newitem2 -> child;", "cJSON_ReplaceItemInObject_9.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> prev == newitem2)
		{
			SpecFileGeneration("object0 -> prev == newitem2;", "cJSON_ReplaceItemInObject_10.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> prev == newitem2 -> next)
		{
			SpecFileGeneration("object0 -> prev == newitem2 -> next;", "cJSON_ReplaceItemInObject_11.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> prev == newitem2 -> prev)
		{
			SpecFileGeneration("object0 -> prev == newitem2 -> prev;", "cJSON_ReplaceItemInObject_12.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> prev == newitem2 -> child)
		{
			SpecFileGeneration("object0 -> prev == newitem2 -> child;", "cJSON_ReplaceItemInObject_13.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> child == newitem2)
		{
			SpecFileGeneration("object0 -> child == newitem2;", "cJSON_ReplaceItemInObject_14.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> child == newitem2 -> next)
		{
			SpecFileGeneration("object0 -> child == newitem2 -> next;", "cJSON_ReplaceItemInObject_15.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> child == newitem2 -> prev)
		{
			SpecFileGeneration("object0 -> child == newitem2 -> prev;", "cJSON_ReplaceItemInObject_16.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> child == newitem2 -> child)
		{
			SpecFileGeneration("object0 -> child == newitem2 -> child;", "cJSON_ReplaceItemInObject_17.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> valuestring == newitem2 -> valuestring)
		{
			SpecFileGeneration("object0 -> valuestring == newitem2 -> valuestring;", "cJSON_ReplaceItemInObject_18.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> valuestring == newitem2 -> string)
		{
			SpecFileGeneration("object0 -> valuestring == newitem2 -> string;", "cJSON_ReplaceItemInObject_19.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> string == newitem2 -> valuestring)
		{
			SpecFileGeneration("object0 -> string == newitem2 -> valuestring;", "cJSON_ReplaceItemInObject_20.cpp", funSignature);
		}
		if(object0 != NULL && newitem2 != NULL && object0 != newitem2 && object0 -> string == newitem2 -> string)
		{
			SpecFileGeneration("object0 -> string == newitem2 -> string;", "cJSON_ReplaceItemInObject_21.cpp", funSignature);
		}
		if(newitem2 != NULL && string1 == newitem2 -> valuestring)
		{
			SpecFileGeneration("string1 == newitem2 -> valuestring;", "cJSON_ReplaceItemInObject_22.cpp", funSignature);
		}
		if(newitem2 != NULL && string1 == newitem2 -> string)
		{
			SpecFileGeneration("string1 == newitem2 -> string;", "cJSON_ReplaceItemInObject_23.cpp", funSignature);
		}
		cJSON_Delete(object0);
		cJSON_Delete(newitem2);
	}

	return 0;
}
