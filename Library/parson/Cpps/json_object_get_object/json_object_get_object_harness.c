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
	
		JSON_Object* result = json_object_get_object(object, name);
		const char *funSignature = "JSON_Object* json_object_get_object(JSON_Object* object, char* name)";
		
		if(result == object)
		{
			SpecFileGeneration("return object;", "json_object_get_object_0.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> wrapping_value == object -> wrapping_value)
		{
			SpecFileGeneration("result -> wrapping_value == object -> wrapping_value;", "json_object_get_object_1.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> wrapping_value == *object -> values)
		{
			SpecFileGeneration("result -> wrapping_value == *object -> values;", "json_object_get_object_2.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> cells == object -> cells)
		{
			SpecFileGeneration("result -> cells == object -> cells;", "json_object_get_object_3.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> cells == object -> cell_ixs)
		{
			SpecFileGeneration("result -> cells == object -> cell_ixs;", "json_object_get_object_4.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && *result -> cells == object -> count)
		{
			SpecFileGeneration("*result -> cells == object -> count;", "json_object_get_object_5.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && *result -> cells == object -> item_capacity)
		{
			SpecFileGeneration("*result -> cells == object -> item_capacity;", "json_object_get_object_6.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && *result -> cells == object -> cell_capacity)
		{
			SpecFileGeneration("*result -> cells == object -> cell_capacity;", "json_object_get_object_7.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> hashes == object -> hashes)
		{
			SpecFileGeneration("result -> hashes == object -> hashes;", "json_object_get_object_8.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> names == object -> names)
		{
			SpecFileGeneration("result -> names == object -> names;", "json_object_get_object_9.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && *result -> values == object -> wrapping_value)
		{
			SpecFileGeneration("*result -> values == object -> wrapping_value;", "json_object_get_object_10.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> values == object -> values)
		{
			SpecFileGeneration("result -> values == object -> values;", "json_object_get_object_11.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> cell_ixs == object -> cells)
		{
			SpecFileGeneration("result -> cell_ixs == object -> cells;", "json_object_get_object_12.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> cell_ixs == object -> cell_ixs)
		{
			SpecFileGeneration("result -> cell_ixs == object -> cell_ixs;", "json_object_get_object_13.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && *result -> cell_ixs == object -> count)
		{
			SpecFileGeneration("*result -> cell_ixs == object -> count;", "json_object_get_object_14.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && *result -> cell_ixs == object -> item_capacity)
		{
			SpecFileGeneration("*result -> cell_ixs == object -> item_capacity;", "json_object_get_object_15.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && *result -> cell_ixs == object -> cell_capacity)
		{
			SpecFileGeneration("*result -> cell_ixs == object -> cell_capacity;", "json_object_get_object_16.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> count == *object -> cells)
		{
			SpecFileGeneration("result -> count == *object -> cells;", "json_object_get_object_17.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> count == *object -> cell_ixs)
		{
			SpecFileGeneration("result -> count == *object -> cell_ixs;", "json_object_get_object_18.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> item_capacity == *object -> cells)
		{
			SpecFileGeneration("result -> item_capacity == *object -> cells;", "json_object_get_object_19.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> item_capacity == *object -> cell_ixs)
		{
			SpecFileGeneration("result -> item_capacity == *object -> cell_ixs;", "json_object_get_object_20.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> cell_capacity == *object -> cells)
		{
			SpecFileGeneration("result -> cell_capacity == *object -> cells;", "json_object_get_object_21.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result != object && result -> cell_capacity == *object -> cell_ixs)
		{
			SpecFileGeneration("result -> cell_capacity == *object -> cell_ixs;", "json_object_get_object_22.cpp", funSignature);
		}
		if(result != NULL && *result -> names == name)
		{
			SpecFileGeneration("*result -> names == name;", "json_object_get_object_23.cpp", funSignature);
		}
		if(object != NULL && *object -> names == name)
		{
			SpecFileGeneration("*object -> names == name;", "json_object_get_object_24.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
