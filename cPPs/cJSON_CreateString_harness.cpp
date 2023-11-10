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
		char string[1024];
		if (fgets(string, sizeof(string), stdin) == NULL) {
			return 1;
		}

	
		cJSON* result = cJSON_CreateString(string);

		std::string fileName = "cJSON_CreateString.cpp";
		std::string funSignature = "cJSON* cJSON_CreateString(char* string)";
		
		if(result != NULL &&result -> valuestring == string)
		{
			SpecFileGeneration("result -> valuestring = string", fileName, funSignature);
		}
		if(result != NULL &&result -> string == string)
		{
			SpecFileGeneration("result -> string = string", fileName, funSignature);
		}
	}

	return 0;
}
