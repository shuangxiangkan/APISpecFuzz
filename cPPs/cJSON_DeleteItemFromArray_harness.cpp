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

		int which;
		scanf("%d", &which);

	
		void result = cJSON_DeleteItemFromArray(array, which);

		std::string fileName = "cJSON_DeleteItemFromArray.cpp";
		std::string funSignature = "void cJSON_DeleteItemFromArray(cJSON* array, int which)";
		
		if(array != NULL &&array -> type == which)
		{
			SpecFileGeneration("array -> type = which", fileName, funSignature);
		}
		if(array != NULL &&array -> valueint == which)
		{
			SpecFileGeneration("array -> valueint = which", fileName, funSignature);
		}
	}

	return 0;
}
