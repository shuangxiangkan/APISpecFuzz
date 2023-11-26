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
		unsigned long index;
		sscanf(strtok(NULL, "\n"), "%lu", &index);

	
		const char* result = json_object_get_name(object, index);
		const char *funSignature = "const char* json_object_get_name(JSON_Object* object, size_t index)";
		
		if(object != NULL && result == *object -> names)
		{
			SpecFileGeneration("return object -> names;", "json_object_get_name_0.cpp", funSignature);
		}
		if(object != NULL && *object -> cells == index)
		{
			SpecFileGeneration("*object -> cells == index;", "json_object_get_name_1.cpp", funSignature);
		}
		if(object != NULL && *object -> cell_ixs == index)
		{
			SpecFileGeneration("*object -> cell_ixs == index;", "json_object_get_name_2.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
