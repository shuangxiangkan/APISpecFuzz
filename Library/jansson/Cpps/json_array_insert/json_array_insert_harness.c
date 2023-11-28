#include "jansson.h"
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

		json_error_t error;
		json_t *array = json_loads(strtok(buf, "\n"), 0, &error);
		unsigned long ind;
		sscanf(strtok(NULL, "\n"), "%lu", &ind);

		json_t *value = json_loads(strtok(NULL, "\n"), 0, &error);
	
		int result = json_array_insert(array, ind, value);
		const char *funSignature = "int json_array_insert(json_t* array, size_t ind, json_t* value)";
		
		if(array == value)
		{
			SpecFileGeneration("array == value;", "json_array_insert_0.cpp", funSignature);
		}
		json_decref(array);
		json_decref(value);
	}

	return 0;
}
