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

		char buffer[1024];
		if (fgets(buffer, sizeof(buffer), stdin) == NULL) {
			return 1;
		}

		int length;
		scanf("%d", &length);

		cJSON_bool format;
		scanf("%d", &format);

	
		cJSON_bool result = cJSON_PrintPreallocated(item, buffer, length, format);

		std::string fileName = "cJSON_PrintPreallocated.cpp";
		std::string funSignature = "cJSON_bool cJSON_PrintPreallocated(cJSON* item, char* buffer, int length, cJSON_bool format)";
		
		if(result == format)
		{
			SpecFileGeneration("return format", fileName, funSignature);
		}
		if(item != NULL &&item -> valuestring == buffer)
		{
			SpecFileGeneration("item -> valuestring = buffer", fileName, funSignature);
		}
		if(item != NULL &&item -> string == buffer)
		{
			SpecFileGeneration("item -> string = buffer", fileName, funSignature);
		}
		if(item != NULL &&item -> type == length)
		{
			SpecFileGeneration("item -> type = length", fileName, funSignature);
		}
		if(item != NULL &&item -> valueint == length)
		{
			SpecFileGeneration("item -> valueint = length", fileName, funSignature);
		}
	}

	return 0;
}
