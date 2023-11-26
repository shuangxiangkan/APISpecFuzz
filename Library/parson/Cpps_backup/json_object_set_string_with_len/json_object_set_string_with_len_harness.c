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
		char *string = strtok(NULL, "\n");
		unsigned long len;
		sscanf(strtok(NULL, "\n"), "%lu", &len);

	
		JSON_Status result = json_object_set_string_with_len(object, name, string, len);
		const char *funSignature = "JSON_Status json_object_set_string_with_len(JSON_Object* object, char* name, char* string, size_t len)";
		
		if(object != NULL && *object -> names == name)
		{
			SpecFileGeneration("*object -> names == name;", "json_object_set_string_with_len_0.cpp", funSignature);
		}
		if(object != NULL && *object -> names == string)
		{
			SpecFileGeneration("*object -> names == string;", "json_object_set_string_with_len_1.cpp", funSignature);
		}
		if(object != NULL && *object -> cells == len)
		{
			SpecFileGeneration("*object -> cells == len;", "json_object_set_string_with_len_2.cpp", funSignature);
		}
		if(object != NULL && *object -> cell_ixs == len)
		{
			SpecFileGeneration("*object -> cell_ixs == len;", "json_object_set_string_with_len_3.cpp", funSignature);
		}
		if(name == string)
		{
			SpecFileGeneration("name == string;", "json_object_set_string_with_len_4.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
