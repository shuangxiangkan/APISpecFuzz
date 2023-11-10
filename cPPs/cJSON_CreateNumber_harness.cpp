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
		double num;
		scanf("%lf", &num);

	
		cJSON* result = cJSON_CreateNumber(num);

		std::string fileName = "cJSON_CreateNumber.cpp";
		std::string funSignature = "cJSON* cJSON_CreateNumber(double num)";
		
		if(result != NULL &&result -> valuedouble == num)
		{
			SpecFileGeneration("result -> valuedouble = num", fileName, funSignature);
		}
	}

	return 0;
}
