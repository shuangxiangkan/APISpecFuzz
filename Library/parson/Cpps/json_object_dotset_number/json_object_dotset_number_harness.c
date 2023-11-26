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
		double number;
		sscanf(strtok(NULL, "\n"), "%lf", &number);

	
		JSON_Status result = json_object_dotset_number(object, name, number);
		const char *funSignature = "JSON_Status json_object_dotset_number(JSON_Object* object, char* name, double number)";
		
		if(object != NULL && *object -> names == name)
		{
			SpecFileGeneration("*object -> names == name;", "json_object_dotset_number_0.cpp", funSignature);
		}
		json_value_free(temp_0);
	}

	return 0;
}
