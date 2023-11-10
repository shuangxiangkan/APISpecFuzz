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
		char json[1024];
		if (fgets(json, sizeof(json), stdin) == NULL) {
			return 1;
		}

	
		void result = cJSON_Minify(json);

		std::string fileName = "cJSON_Minify.cpp";
		std::string funSignature = "void cJSON_Minify(char* json)";
		
	}

	return 0;
}
