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
	
		JSON_Value* result = json_array_get_wrapping_value(array);
		const char *funSignature = "JSON_Value* json_array_get_wrapping_value(arg)";
		
		if(array != NULL && result == array -> wrapping_value)
		{
			SpecFileGeneration("return array -> wrapping_value;", "json_array_get_wrapping_value_0.cpp", funSignature);
		}
		if(array != NULL && result == *array -> items)
		{
			SpecFileGeneration("return array -> items;", "json_array_get_wrapping_value_1.cpp", funSignature);
		}
		if(result != NULL && array != NULL && result -> parent == array -> wrapping_value)
		{
			SpecFileGeneration("result -> parent == array -> wrapping_value;", "json_array_get_wrapping_value_2.cpp", funSignature);
		}
		if(result != NULL && array != NULL && result -> parent == *array -> items)
		{
			SpecFileGeneration("result -> parent == *array -> items;", "json_array_get_wrapping_value_3.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
