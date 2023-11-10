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
		char _array[4096];
		if (fgets(_array, sizeof(_array), stdin) == NULL) {
			return 1;
		}
		cJSON *array = cJSON_Parse(_array);

	
		int result = cJSON_GetArraySize(array);

		std::string fileName = "cJSON_GetArraySize.cpp";
		std::string funSignature = "int cJSON_GetArraySize(cJSON* array)";
		
		if(array != NULL &&result == array -> type)
		{
			SpecFileGeneration("return array -> type", fileName, funSignature);
		}
		if(array != NULL &&result == array -> valueint)
		{
			SpecFileGeneration("return array -> valueint", fileName, funSignature);
		}
	}

	return 0;
}
