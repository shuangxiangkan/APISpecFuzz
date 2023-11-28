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
		unsigned long index;
		sscanf(strtok(NULL, "\n"), "%lu", &index);

	
		json_t* result = json_array_get(array, index);
		const char *funSignature = "json_t* json_array_get(json_t* array, size_t index)";
		
		if(result == array)
		{
			SpecFileGeneration("return array;", "json_array_get_0.cpp", funSignature);
		}
		json_decref(array);
	}

	return 0;
}
