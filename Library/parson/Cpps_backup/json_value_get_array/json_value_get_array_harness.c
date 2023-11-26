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
	
		JSON_Array* result = json_value_get_array(value);
		const char *funSignature = "JSON_Array* json_value_get_array(arg)";
		
		if(result != NULL && result -> wrapping_value == value)
		{
			SpecFileGeneration("result -> wrapping_value == value;", "json_value_get_array_0.cpp", funSignature);
		}
		if(result != NULL && value != NULL && result -> wrapping_value == value -> parent)
		{
			SpecFileGeneration("result -> wrapping_value == value -> parent;", "json_value_get_array_1.cpp", funSignature);
		}
		if(result != NULL && *result -> items == value)
		{
			SpecFileGeneration("*result -> items == value;", "json_value_get_array_2.cpp", funSignature);
		}
		if(result != NULL && value != NULL && *result -> items == value -> parent)
		{
			SpecFileGeneration("*result -> items == value -> parent;", "json_value_get_array_3.cpp", funSignature);
		}
		json_value_free(value);
	}

	return 0;
}
