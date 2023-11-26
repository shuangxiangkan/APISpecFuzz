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
	
		size_t result = json_object_get_count(object);
		const char *funSignature = "size_t json_object_get_count(arg)";
		
		if(object != NULL && result == *object -> cells)
		{
			SpecFileGeneration("return object -> cells;", "json_object_get_count_0.cpp", funSignature);
		}
		if(object != NULL && result == *object -> cell_ixs)
		{
			SpecFileGeneration("return object -> cell_ixs;", "json_object_get_count_1.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
