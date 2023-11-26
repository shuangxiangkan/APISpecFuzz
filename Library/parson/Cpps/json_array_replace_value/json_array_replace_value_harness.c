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
		JSON_Array *array = json_array(temp_0);
		unsigned long i;
		sscanf(strtok(NULL, "\n"), "%lu", &i);

		JSON_Value *	value = json_parse_string(strtok(NULL, "\n"));
	
		JSON_Status result = json_array_replace_value(array, i, value);
		const char *funSignature = "JSON_Status json_array_replace_value(JSON_Array* array, size_t i, JSON_Value* value)";
		
		if(array != NULL && array -> wrapping_value == value)
		{
			SpecFileGeneration("array -> wrapping_value == value;", "json_array_replace_value_0.cpp", funSignature);
		}
		if(array != NULL && value != NULL && array -> wrapping_value == value -> parent)
		{
			SpecFileGeneration("array -> wrapping_value == value -> parent;", "json_array_replace_value_1.cpp", funSignature);
		}
		if(array != NULL && *array -> items == value)
		{
			SpecFileGeneration("*array -> items == value;", "json_array_replace_value_2.cpp", funSignature);
		}
		if(array != NULL && value != NULL && *array -> items == value -> parent)
		{
			SpecFileGeneration("*array -> items == value -> parent;", "json_array_replace_value_3.cpp", funSignature);
		}
		json_value_free(temp_0);
		json_value_free(value);
	}

	return 0;
}
