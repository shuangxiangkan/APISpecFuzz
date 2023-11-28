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
		void *iter = strtok(NULL, "\n");
		json_t *value = json_loads(strtok(NULL, "\n"), 0, &error);
	
		int result = json_object_iter_set_new(object, iter, value);
		const char *funSignature = "int json_object_iter_set_new(json_t* object, void* iter, json_t* value)";
		
		if(object == iter)
		{
			SpecFileGeneration("object == iter;", "json_object_iter_set_new_0.cpp", funSignature);
		}
		if(object == value)
		{
			SpecFileGeneration("object == value;", "json_object_iter_set_new_1.cpp", funSignature);
		}
		if(iter == value)
		{
			SpecFileGeneration("iter == value;", "json_object_iter_set_new_2.cpp", funSignature);
		}
		json_decref(object);
		json_decref(value);
	}

	return 0;
}
