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
		unsigned long index;
		sscanf(strtok(NULL, "\n"), "%lu", &index);

	
		JSON_Array* result = json_array_get_array(array, index);
		const char *funSignature = "JSON_Array* json_array_get_array(JSON_Array* array, size_t index)";
		
		if(result == array)
		{
			SpecFileGeneration("return array;", "json_array_get_array_0.cpp", funSignature);
		}
		if(result != NULL && array != NULL && result != array && result -> wrapping_value == array -> wrapping_value)
		{
			SpecFileGeneration("result -> wrapping_value == array -> wrapping_value;", "json_array_get_array_1.cpp", funSignature);
		}
		if(result != NULL && array != NULL && result != array && result -> wrapping_value == *array -> items)
		{
			SpecFileGeneration("result -> wrapping_value == *array -> items;", "json_array_get_array_2.cpp", funSignature);
		}
		if(result != NULL && array != NULL && result != array && *result -> items == array -> wrapping_value)
		{
			SpecFileGeneration("*result -> items == array -> wrapping_value;", "json_array_get_array_3.cpp", funSignature);
		}
		if(result != NULL && array != NULL && result != array && result -> items == array -> items)
		{
			SpecFileGeneration("result -> items == array -> items;", "json_array_get_array_4.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
