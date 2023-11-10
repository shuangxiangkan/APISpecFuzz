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
		char value[1024];
		if (fgets(value, sizeof(value), stdin) == NULL) {
			return 1;
		}

	
		cJSON* result = cJSON_Parse(value);

		std::string fileName = "cJSON_Parse.cpp";
		std::string funSignature = "cJSON* cJSON_Parse(char* value)";
		
		if(result != NULL &&result -> valuestring == value)
		{
			SpecFileGeneration("result -> valuestring = value", fileName, funSignature);
		}
		if(result != NULL &&result -> string == value)
		{
			SpecFileGeneration("result -> string = value", fileName, funSignature);
		}
	}

	return 0;
}
