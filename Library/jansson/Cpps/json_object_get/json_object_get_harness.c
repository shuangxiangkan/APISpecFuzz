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
		json_t *object = json_loads(strtok(buf, "\n"), 0, &error);
		char *key = strtok(NULL, "\n");
	
		json_t* result = json_object_get(object, key);
		const char *funSignature = "json_t* json_object_get(json_t* object, char* key)";
		
		if(result == object)
		{
			SpecFileGeneration("return object;", "json_object_get_0.cpp", funSignature);
		}
		json_decref(object);
	}

	return 0;
}
