#include "cJSON.h"
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

		cJSON *object0 = cJSON_Parse(strtok(buf, "\n"));
		char *valuestring1 = strtok(NULL, "\n");
	
		char* result = cJSON_SetValuestring(object0, valuestring1);
		const char *funSignature = "char* cJSON_SetValuestring(cJSON* object0, char* valuestring0)";
		
		if(object0 != NULL && result == object0 -> valuestring)
		{
			SpecFileGeneration("return object0 -> valuestring;", "cJSON_SetValuestring_0.cpp", funSignature);
		}
		if(object0 != NULL && result == object0 -> string)
		{
			SpecFileGeneration("return object0 -> string;", "cJSON_SetValuestring_1.cpp", funSignature);
		}
		if(result == valuestring1)
		{
			SpecFileGeneration("return valuestring1;", "cJSON_SetValuestring_2.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> valuestring == valuestring1)
		{
			SpecFileGeneration("object0 -> valuestring == valuestring1;", "cJSON_SetValuestring_3.cpp", funSignature);
		}
		if(object0 != NULL && object0 -> string == valuestring1)
		{
			SpecFileGeneration("object0 -> string == valuestring1;", "cJSON_SetValuestring_4.cpp", funSignature);
		}
		cJSON_Delete(object0);
	}

	return 0;
}
