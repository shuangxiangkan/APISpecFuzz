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
		cJSON *item2 = cJSON_Parse(strtok(NULL, "\n"));
	
		cJSON_bool result = cJSON_AddItemReferenceToObject(object0, string1, item2);
		const char *funSignature = "cJSON_bool cJSON_AddItemReferenceToObject(cJSON* object0, char* string0, cJSON* item0)";
		
		if(object0 != NULL && object0 -> valuestring == string1)
		{
			SpecFileGeneration("object0 -> valuestring == string1;", "cJSON_AddItemReferenceToObject_0.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == string1)
		{
			SpecFileGeneration("object0 -> string == string1;", "cJSON_AddItemReferenceToObject_1.cpp", funSignature);
		}
		if(object0 == item2)
		{
			SpecFileGeneration("object0 == item2;", "cJSON_AddItemReferenceToObject_2.cpp", funSignature);
		}
		if(item2 != NULL && object0 == item2 -> next)
		{
			SpecFileGeneration("object0 == item2 -> next;", "cJSON_AddItemReferenceToObject_3.cpp", funSignature);
		}
		if(item2 != NULL && object0 == item2 -> prev)
		{
			SpecFileGeneration("object0 == item2 -> prev;", "cJSON_AddItemReferenceToObject_4.cpp", funSignature);
		}
		if(item2 != NULL && object0 == item2 -> child)
		{
			SpecFileGeneration("object0 == item2 -> child;", "cJSON_AddItemReferenceToObject_5.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> next == item2)
		{
			SpecFileGeneration("object0 -> next == item2;", "cJSON_AddItemReferenceToObject_6.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> next == item2 -> next)
		{
			SpecFileGeneration("object0 -> next == item2 -> next;", "cJSON_AddItemReferenceToObject_7.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> next == item2 -> prev)
		{
			SpecFileGeneration("object0 -> next == item2 -> prev;", "cJSON_AddItemReferenceToObject_8.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> next == item2 -> child)
		{
			SpecFileGeneration("object0 -> next == item2 -> child;", "cJSON_AddItemReferenceToObject_9.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> prev == item2)
		{
			SpecFileGeneration("object0 -> prev == item2;", "cJSON_AddItemReferenceToObject_10.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> prev == item2 -> next)
		{
			SpecFileGeneration("object0 -> prev == item2 -> next;", "cJSON_AddItemReferenceToObject_11.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> prev == item2 -> prev)
		{
			SpecFileGeneration("object0 -> prev == item2 -> prev;", "cJSON_AddItemReferenceToObject_12.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> prev == item2 -> child)
		{
			SpecFileGeneration("object0 -> prev == item2 -> child;", "cJSON_AddItemReferenceToObject_13.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> child == item2)
		{
			SpecFileGeneration("object0 -> child == item2;", "cJSON_AddItemReferenceToObject_14.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> child == item2 -> next)
		{
			SpecFileGeneration("object0 -> child == item2 -> next;", "cJSON_AddItemReferenceToObject_15.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> child == item2 -> prev)
		{
			SpecFileGeneration("object0 -> child == item2 -> prev;", "cJSON_AddItemReferenceToObject_16.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> child == item2 -> child)
		{
			SpecFileGeneration("object0 -> child == item2 -> child;", "cJSON_AddItemReferenceToObject_17.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> valuestring == item2 -> valuestring)
		{
			SpecFileGeneration("object0 -> valuestring == item2 -> valuestring;", "cJSON_AddItemReferenceToObject_18.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> valuestring == item2 -> string)
		{
			SpecFileGeneration("object0 -> valuestring == item2 -> string;", "cJSON_AddItemReferenceToObject_19.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> string == item2 -> valuestring)
		{
			SpecFileGeneration("object0 -> string == item2 -> valuestring;", "cJSON_AddItemReferenceToObject_20.cpp", funSignature);
		}
		if(object0 != NULL && item2 != NULL && object0 != item2 && object0 -> string == item2 -> string)
		{
			SpecFileGeneration("object0 -> string == item2 -> string;", "cJSON_AddItemReferenceToObject_21.cpp", funSignature);
		}
		if(item2 != NULL && string1 == item2 -> valuestring)
		{
			SpecFileGeneration("string1 == item2 -> valuestring;", "cJSON_AddItemReferenceToObject_22.cpp", funSignature);
		}
		if(item2 != NULL && string1 == item2 -> string)
		{
			SpecFileGeneration("string1 == item2 -> string;", "cJSON_AddItemReferenceToObject_23.cpp", funSignature);
		}
		cJSON_Delete(object0);
		cJSON_Delete(item2);
	}

	return 0;
}
