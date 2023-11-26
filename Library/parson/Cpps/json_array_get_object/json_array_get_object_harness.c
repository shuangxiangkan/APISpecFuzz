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

	
		JSON_Object* result = json_array_get_object(array, index);
		const char *funSignature = "JSON_Object* json_array_get_object(JSON_Array* array, size_t index)";
		
		if(result != NULL && array != NULL && result -> wrapping_value == array -> wrapping_value)
		{
			SpecFileGeneration("result -> wrapping_value == array -> wrapping_value;", "json_array_get_object_0.cpp", funSignature);
		}
		if(result != NULL && array != NULL && result -> wrapping_value == *array -> items)
		{
			SpecFileGeneration("result -> wrapping_value == *array -> items;", "json_array_get_object_1.cpp", funSignature);
		}
		if(result != NULL && array != NULL && *result -> cells == array -> count)
		{
			SpecFileGeneration("*result -> cells == array -> count;", "json_array_get_object_2.cpp", funSignature);
		}
		if(result != NULL && array != NULL && *result -> cells == array -> capacity)
		{
			SpecFileGeneration("*result -> cells == array -> capacity;", "json_array_get_object_3.cpp", funSignature);
		}
		if(result != NULL && array != NULL && *result -> values == array -> wrapping_value)
		{
			SpecFileGeneration("*result -> values == array -> wrapping_value;", "json_array_get_object_4.cpp", funSignature);
		}
		if(result != NULL && array != NULL && result -> values == array -> items)
		{
			SpecFileGeneration("result -> values == array -> items;", "json_array_get_object_5.cpp", funSignature);
		}
		if(result != NULL && array != NULL && *result -> cell_ixs == array -> count)
		{
			SpecFileGeneration("*result -> cell_ixs == array -> count;", "json_array_get_object_6.cpp", funSignature);
		}
		if(result != NULL && array != NULL && *result -> cell_ixs == array -> capacity)
		{
			SpecFileGeneration("*result -> cell_ixs == array -> capacity;", "json_array_get_object_7.cpp", funSignature);
		}
		if(result != NULL && *result -> cells == index)
		{
			SpecFileGeneration("*result -> cells == index;", "json_array_get_object_8.cpp", funSignature);
		}
		if(result != NULL && *result -> cell_ixs == index)
		{
			SpecFileGeneration("*result -> cell_ixs == index;", "json_array_get_object_9.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
