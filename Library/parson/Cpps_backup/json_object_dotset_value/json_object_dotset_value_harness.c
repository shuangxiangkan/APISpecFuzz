#include "parson.h"
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

		JSON_Value *temp_0 = json_parse_string(strtok(buf, "\n"));
		JSON_Object *object = json_object(temp_0);
		char *name = strtok(NULL, "\n");
		JSON_Value *	value = json_parse_string(strtok(NULL, "\n"));
	
		JSON_Status result = json_object_dotset_value(object, name, value);
		const char *funSignature = "JSON_Status json_object_dotset_value(JSON_Object* object, char* name, JSON_Value* value)";
		
		if(object != NULL && *object -> names == name)
		{
			SpecFileGeneration("*object -> names == name;", "json_object_dotset_value_0.cpp", funSignature);
		}
		if(object != NULL && object -> wrapping_value == value)
		{
			SpecFileGeneration("object -> wrapping_value == value;", "json_object_dotset_value_1.cpp", funSignature);
		}
		if(object != NULL && value != NULL && object -> wrapping_value == value -> parent)
		{
			SpecFileGeneration("object -> wrapping_value == value -> parent;", "json_object_dotset_value_2.cpp", funSignature);
		}
		if(object != NULL && *object -> values == value)
		{
			SpecFileGeneration("*object -> values == value;", "json_object_dotset_value_3.cpp", funSignature);
		}
		if(object != NULL && value != NULL && *object -> values == value -> parent)
		{
			SpecFileGeneration("*object -> values == value -> parent;", "json_object_dotset_value_4.cpp", funSignature);
		}
		json_value_free(temp_0);
		json_value_free(value);
	}

	return 0;
}
