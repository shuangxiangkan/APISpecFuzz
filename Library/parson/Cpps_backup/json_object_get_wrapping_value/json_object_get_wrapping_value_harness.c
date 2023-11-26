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
	
		JSON_Value* result = json_object_get_wrapping_value(object);
		const char *funSignature = "JSON_Value* json_object_get_wrapping_value(arg)";
		
		if(object != NULL && result == object -> wrapping_value)
		{
			SpecFileGeneration("return object -> wrapping_value;", "json_object_get_wrapping_value_0.cpp", funSignature);
		}
		if(object != NULL && result == *object -> values)
		{
			SpecFileGeneration("return object -> values;", "json_object_get_wrapping_value_1.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result -> parent == object -> wrapping_value)
		{
			SpecFileGeneration("result -> parent == object -> wrapping_value;", "json_object_get_wrapping_value_2.cpp", funSignature);
		}
		if(result != NULL && object != NULL && result -> parent == *object -> values)
		{
			SpecFileGeneration("result -> parent == *object -> values;", "json_object_get_wrapping_value_3.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
