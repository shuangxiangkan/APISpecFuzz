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
		char _item[4096];
		if (fgets(_item, sizeof(_item), stdin) == NULL) {
			return 1;
		}
		cJSON *item = cJSON_Parse(_item);

	
		double result = cJSON_GetNumberValue(item);

		std::string fileName = "cJSON_GetNumberValue.cpp";
		std::string funSignature = "double cJSON_GetNumberValue(cJSON* item)";
		
		if(item != NULL &&result == item -> valuedouble)
		{
			SpecFileGeneration("return item -> valuedouble", fileName, funSignature);
		}
	}

	return 0;
}
