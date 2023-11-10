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
	
		const char* result = cJSON_GetErrorPtr();

		std::string fileName = "cJSON_GetErrorPtr.cpp";
		std::string funSignature = "const char* cJSON_GetErrorPtr()";
		
	}

	return 0;
}
