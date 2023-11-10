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

		cJSON_bool recurse;
		scanf("%d", &recurse);

	
		cJSON* result = cJSON_Duplicate(item, recurse);

		std::string fileName = "cJSON_Duplicate.cpp";
		std::string funSignature = "cJSON* cJSON_Duplicate(cJSON* item, cJSON_bool recurse)";
		
		if(result == item)
		{
			SpecFileGeneration("return item", fileName, funSignature);
		}
		if(item != NULL &&result == item -> next)
		{
			SpecFileGeneration("return item -> next", fileName, funSignature);
		}
		if(item != NULL &&result == item -> prev)
		{
			SpecFileGeneration("return item -> prev", fileName, funSignature);
		}
		if(item != NULL &&result == item -> child)
		{
			SpecFileGeneration("return item -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> next == item)
		{
			SpecFileGeneration("result -> next = item", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> next == item -> next)
		{
			SpecFileGeneration("result -> next = item -> next", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> next == item -> prev)
		{
			SpecFileGeneration("result -> next = item -> prev", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> next == item -> child)
		{
			SpecFileGeneration("result -> next = item -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> prev == item)
		{
			SpecFileGeneration("result -> prev = item", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> prev == item -> next)
		{
			SpecFileGeneration("result -> prev = item -> next", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> prev == item -> prev)
		{
			SpecFileGeneration("result -> prev = item -> prev", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> prev == item -> child)
		{
			SpecFileGeneration("result -> prev = item -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> child == item)
		{
			SpecFileGeneration("result -> child = item", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> child == item -> next)
		{
			SpecFileGeneration("result -> child = item -> next", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> child == item -> prev)
		{
			SpecFileGeneration("result -> child = item -> prev", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> child == item -> child)
		{
			SpecFileGeneration("result -> child = item -> child", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> type == item -> type)
		{
			SpecFileGeneration("result -> type = item -> type", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> type == item -> valueint)
		{
			SpecFileGeneration("result -> type = item -> valueint", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> valuestring == item -> valuestring)
		{
			SpecFileGeneration("result -> valuestring = item -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> valuestring == item -> string)
		{
			SpecFileGeneration("result -> valuestring = item -> string", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> valueint == item -> type)
		{
			SpecFileGeneration("result -> valueint = item -> type", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> valueint == item -> valueint)
		{
			SpecFileGeneration("result -> valueint = item -> valueint", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> valuedouble == item -> valuedouble)
		{
			SpecFileGeneration("result -> valuedouble = item -> valuedouble", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> string == item -> valuestring)
		{
			SpecFileGeneration("result -> string = item -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&item != NULL &&result -> string == item -> string)
		{
			SpecFileGeneration("result -> string = item -> string", fileName, funSignature);
		}
	}

	return 0;
}
