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

		JSON_Value *a = json_parse_string(strtok(buf, "\n"));
		JSON_Value *	b = json_parse_string(strtok(NULL, "\n"));
	
		int result = json_value_equals(a, b);
		const char *funSignature = "int json_value_equals(JSON_Value* a, JSON_Value* b)";
		
		if(a == b)
		{
			SpecFileGeneration("a == b;", "json_value_equals_0.cpp", funSignature);
		}
		if(b != NULL && a == b -> parent)
		{
			SpecFileGeneration("a == b -> parent;", "json_value_equals_1.cpp", funSignature);
		}
		if(a != NULL && a -> parent == b)
		{
			SpecFileGeneration("a -> parent == b;", "json_value_equals_2.cpp", funSignature);
		}
		if(a != NULL && b != NULL && a != b && a -> parent == b -> parent)
		{
			SpecFileGeneration("a -> parent == b -> parent;", "json_value_equals_3.cpp", funSignature);
		}
		json_value_free(a);
		json_value_free(b);
	}

	return 0;
}
