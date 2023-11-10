#include <iostream>
#include <fstream>
#include <string>
#include "cJSON.h"

void SpecFileGeneration(std::string specification, std::string fileName, std::string funSignature)
{
	std::string fn = fileName;
	std::ofstream file(fn, std::ios::app);
	file << funSignature;
	file << "\n";
	file << "{\n";
	file << specification;
	file << "\n";
	file << "}\n";
	file.close();
}

int main() {

	while (__AFL_LOOP(1000)) 
	{
		char _object[4096];
		if (fgets(_object, sizeof(_object), stdin) == NULL) {
			return 1;
		}
		cJSON *object = cJSON_Parse(_object);

		char valuestring[1024];
		if (fgets(valuestring, sizeof(valuestring), stdin) == NULL) {
			return 1;
		}

	
		char* result = cJSON_SetValuestring(object, valuestring);

		std::string fileName = "cJSON_SetValuestring.cpp";
		std::string funSignature = "char* cJSON_SetValuestring(cJSON* object, char* valuestring)";
		
		if(object != NULL &&result == object -> valuestring)
		{
			SpecFileGeneration("return object -> valuestring", fileName, funSignature);
		}
		if(object != NULL &&result == object -> string)
		{
			SpecFileGeneration("return object -> string", fileName, funSignature);
		}
		if(result == valuestring)
		{
			SpecFileGeneration("return valuestring", fileName, funSignature);
		}
		if(object != NULL &&object -> valuestring == valuestring)
		{
			SpecFileGeneration("object -> valuestring = valuestring", fileName, funSignature);
		}
		if(object != NULL &&object -> string == valuestring)
		{
			SpecFileGeneration("object -> string = valuestring", fileName, funSignature);
		}
	}

	return 0;
}
