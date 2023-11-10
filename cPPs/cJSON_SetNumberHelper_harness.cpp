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

		double number;
		scanf("%lf", &number);

	
		double result = cJSON_SetNumberHelper(object, number);

		std::string fileName = "cJSON_SetNumberHelper.cpp";
		std::string funSignature = "double cJSON_SetNumberHelper(cJSON* object, double number)";
		
		if(object != NULL &&result == object -> valuedouble)
		{
			SpecFileGeneration("return object -> valuedouble", fileName, funSignature);
		}
		if(result == number)
		{
			SpecFileGeneration("return number", fileName, funSignature);
		}
		if(object != NULL &&object -> valuedouble == number)
		{
			SpecFileGeneration("object -> valuedouble = number", fileName, funSignature);
		}
	}

	return 0;
}
