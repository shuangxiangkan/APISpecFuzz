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
		cJSON_bool boolean;
		scanf("%d", &boolean);

	
		cJSON* result = cJSON_CreateBool(boolean);

		std::string fileName = "cJSON_CreateBool.cpp";
		std::string funSignature = "cJSON* cJSON_CreateBool(cJSON_bool boolean)";
		
	}

	return 0;
}