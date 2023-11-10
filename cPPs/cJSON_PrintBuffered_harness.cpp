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

		int prebuffer;
		scanf("%d", &prebuffer);

		cJSON_bool fmt;
		scanf("%d", &fmt);

	
		char* result = cJSON_PrintBuffered(item, prebuffer, fmt);

		std::string fileName = "cJSON_PrintBuffered.cpp";
		std::string funSignature = "char* cJSON_PrintBuffered(cJSON* item, int prebuffer, cJSON_bool fmt)";
		
		if(item != NULL &&result == item -> valuestring)
		{
			SpecFileGeneration("return item -> valuestring", fileName, funSignature);
		}
		if(item != NULL &&result == item -> string)
		{
			SpecFileGeneration("return item -> string", fileName, funSignature);
		}
		if(item != NULL &&item -> type == prebuffer)
		{
			SpecFileGeneration("item -> type = prebuffer", fileName, funSignature);
		}
		if(item != NULL &&item -> valueint == prebuffer)
		{
			SpecFileGeneration("item -> valueint = prebuffer", fileName, funSignature);
		}
	}

	return 0;
}
