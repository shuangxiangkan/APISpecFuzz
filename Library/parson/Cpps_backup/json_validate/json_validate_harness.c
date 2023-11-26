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

		JSON_Value *schema = json_parse_string(strtok(buf, "\n"));
		JSON_Value *	value = json_parse_string(strtok(NULL, "\n"));
	
		JSON_Status result = json_validate(schema, value);
		const char *funSignature = "JSON_Status json_validate(JSON_Value* schema, JSON_Value* value)";
		
		if(schema == value)
		{
			SpecFileGeneration("schema == value;", "json_validate_0.cpp", funSignature);
		}
		if(value != NULL && schema == value -> parent)
		{
			SpecFileGeneration("schema == value -> parent;", "json_validate_1.cpp", funSignature);
		}
		if(schema != NULL && schema -> parent == value)
		{
			SpecFileGeneration("schema -> parent == value;", "json_validate_2.cpp", funSignature);
		}
		if(schema != NULL && value != NULL && schema != value && schema -> parent == value -> parent)
		{
			SpecFileGeneration("schema -> parent == value -> parent;", "json_validate_3.cpp", funSignature);
		}
		json_value_free(schema);
		json_value_free(value);
	}

	return 0;
}
