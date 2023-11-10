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
		char raw[1024];
		if (fgets(raw, sizeof(raw), stdin) == NULL) {
			return 1;
		}

	
		cJSON* result = cJSON_CreateRaw(raw);

		std::string fileName = "cJSON_CreateRaw.cpp";
		std::string funSignature = "cJSON* cJSON_CreateRaw(char* raw)";
		
		if(result != NULL &&result -> valuestring == raw)
		{
			SpecFileGeneration("result -> valuestring = raw", fileName, funSignature);
		}
		if(result != NULL &&result -> string == raw)
		{
			SpecFileGeneration("result -> string = raw", fileName, funSignature);
		}
	}

	return 0;
}
