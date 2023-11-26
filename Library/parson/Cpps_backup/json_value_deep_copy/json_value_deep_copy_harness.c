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
	
		JSON_Value* result = json_value_deep_copy(value);
		const char *funSignature = "JSON_Value* json_value_deep_copy(arg)";
		
		if(result == value)
		{
			SpecFileGeneration("return value;", "json_value_deep_copy_0.cpp", funSignature);
		}
		if(value != NULL && result == value -> parent)
		{
			SpecFileGeneration("return value -> parent;", "json_value_deep_copy_1.cpp", funSignature);
		}
		if(result != NULL && result -> parent == value)
		{
			SpecFileGeneration("result -> parent == value;", "json_value_deep_copy_2.cpp", funSignature);
		}
		if(result != NULL && value != NULL && result != value && result -> parent == value -> parent)
		{
			SpecFileGeneration("result -> parent == value -> parent;", "json_value_deep_copy_3.cpp", funSignature);
		}
		json_value_free(value);
	}

	return 0;
}
