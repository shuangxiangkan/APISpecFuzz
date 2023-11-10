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

		char string[1024];
		if (fgets(string, sizeof(string), stdin) == NULL) {
			return 1;
		}

	
		void result = cJSON_DeleteItemFromObjectCaseSensitive(object, string);

		std::string fileName = "cJSON_DeleteItemFromObjectCaseSensitive.cpp";
		std::string funSignature = "void cJSON_DeleteItemFromObjectCaseSensitive(cJSON* object, char* string)";
		
		if(object != NULL &&object -> valuestring == string)
		{
			SpecFileGeneration("object -> valuestring = string", fileName, funSignature);
		}
		if(object != NULL &&object -> string == string)
		{
			SpecFileGeneration("object -> string = string", fileName, funSignature);
		}
	}

	return 0;
}
