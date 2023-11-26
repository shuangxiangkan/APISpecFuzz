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

		JSON_Value *value = json_parse_string(strtok(buf, "\n"));
	
		JSON_Object* result = json_object(value);
		const char *funSignature = "JSON_Object* json_object(arg)";
		
		if(result != NULL && result -> wrapping_value == value)
		{
			SpecFileGeneration("result -> wrapping_value == value;", "json_object_0.cpp", funSignature);
		}
		if(result != NULL && value != NULL && result -> wrapping_value == value -> parent)
		{
			SpecFileGeneration("result -> wrapping_value == value -> parent;", "json_object_1.cpp", funSignature);
		}
		if(result != NULL && *result -> values == value)
		{
			SpecFileGeneration("*result -> values == value;", "json_object_2.cpp", funSignature);
		}
		if(result != NULL && value != NULL && *result -> values == value -> parent)
		{
			SpecFileGeneration("*result -> values == value -> parent;", "json_object_3.cpp", funSignature);
		}
		json_value_free(value);
	}

	return 0;
}
