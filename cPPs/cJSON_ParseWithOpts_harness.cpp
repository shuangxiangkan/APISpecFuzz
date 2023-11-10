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
		char value[1024];
		if (fgets(value, sizeof(value), stdin) == NULL) {
			return 1;
		}

		char return_parse_end[1024];
		if (fgets(return_parse_end, sizeof(return_parse_end), stdin) == NULL) {
			return 1;
		}

		cJSON_bool require_null_terminated;
		scanf("%d", &require_null_terminated);

	
		cJSON* result = cJSON_ParseWithOpts(value, return_parse_end, require_null_terminated);

		std::string fileName = "cJSON_ParseWithOpts.cpp";
		std::string funSignature = "cJSON* cJSON_ParseWithOpts(char* value, char** return_parse_end, cJSON_bool require_null_terminated)";
		
		if(result != NULL &&result -> valuestring == value)
		{
			SpecFileGeneration("result -> valuestring = value", fileName, funSignature);
		}
		if(result != NULL &&result -> string == value)
		{
			SpecFileGeneration("result -> string = value", fileName, funSignature);
		}
		if(result != NULL &&result -> valuestring == *return_parse_end)
		{
			SpecFileGeneration("result -> valuestring = return_parse_end", fileName, funSignature);
		}
		if(result != NULL &&result -> string == *return_parse_end)
		{
			SpecFileGeneration("result -> string = return_parse_end", fileName, funSignature);
		}
		if(value == *return_parse_end)
		{
			SpecFileGeneration("value = return_parse_end", fileName, funSignature);
		}
	}

	return 0;
}
