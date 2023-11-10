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
		float *numbers;
		scanf("%f", &numbers);

		int count;
		scanf("%d", &count);

	
		cJSON* result = cJSON_CreateFloatArray(numbers, count);

		std::string fileName = "cJSON_CreateFloatArray.cpp";
		std::string funSignature = "cJSON* cJSON_CreateFloatArray(float* numbers, int count)";
		
		if(result != NULL &&result -> type == count)
		{
			SpecFileGeneration("result -> type = count", fileName, funSignature);
		}
		if(result != NULL &&result -> valueint == count)
		{
			SpecFileGeneration("result -> valueint = count", fileName, funSignature);
		}
	}

	return 0;
}
