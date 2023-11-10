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
		char strings[1024];
		if (fgets(strings, sizeof(strings), stdin) == NULL) {
			return 1;
		}

		int count;
		scanf("%d", &count);

	
		cJSON* result = cJSON_CreateStringArray(strings, count);

		std::string fileName = "cJSON_CreateStringArray.cpp";
		std::string funSignature = "cJSON* cJSON_CreateStringArray(char** strings, int count)";
		
		if(result != NULL &&result -> valuestring == *strings)
		{
			SpecFileGeneration("result -> valuestring = strings", fileName, funSignature);
		}
		if(result != NULL &&result -> string == *strings)
		{
			SpecFileGeneration("result -> string = strings", fileName, funSignature);
		}
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
