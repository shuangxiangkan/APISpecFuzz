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
	
		JSON_Array* result = json_object_get_array(object, name);
		const char *funSignature = "JSON_Array* json_object_get_array(JSON_Object* object, char* name)";
		
		if(result != NULL && object != NULL && result -> wrapping_value == object -> wrapping_value)
		{
			SpecFileGeneration("result -> wrapping_value == object -> wrapping_value;", "json_object_get_array_0.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result -> wrapping_value == *object -> values)
		{
			SpecFileGeneration("result -> wrapping_value == *object -> values;", "json_object_get_array_1.cpp", funSignature);
		}
		if(result != NULL && object != NULL && *result -> items == object -> wrapping_value)
		{
			SpecFileGeneration("*result -> items == object -> wrapping_value;", "json_object_get_array_2.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result -> items == object -> values)
		{
			SpecFileGeneration("result -> items == object -> values;", "json_object_get_array_3.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result -> count == *object -> cells)
		{
			SpecFileGeneration("result -> count == *object -> cells;", "json_object_get_array_4.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result -> count == *object -> cell_ixs)
		{
			SpecFileGeneration("result -> count == *object -> cell_ixs;", "json_object_get_array_5.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result -> capacity == *object -> cells)
		{
			SpecFileGeneration("result -> capacity == *object -> cells;", "json_object_get_array_6.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result -> capacity == *object -> cell_ixs)
		{
			SpecFileGeneration("result -> capacity == *object -> cell_ixs;", "json_object_get_array_7.cpp", funSignature);
		}
		if(object != NULL && *object -> names == name)
		{
			SpecFileGeneration("*object -> names == name;", "json_object_get_array_8.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
