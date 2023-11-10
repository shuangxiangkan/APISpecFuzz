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
		char _child[4096];
		if (fgets(_child, sizeof(_child), stdin) == NULL) {
			return 1;
		}
		cJSON *child = cJSON_Parse(_child);

	
		cJSON* result = cJSON_CreateObjectReference(child);

		std::string fileName = "cJSON_CreateObjectReference.cpp";
		std::string funSignature = "cJSON* cJSON_CreateObjectReference(cJSON* child)";
		
		if(result == child)
		{
			SpecFileGeneration("return child", fileName, funSignature);
		}
		if(child != NULL &&result == child -> next)
		{
			SpecFileGeneration("return child -> next", fileName, funSignature);
		}
		if(child != NULL &&result == child -> prev)
		{
			SpecFileGeneration("return child -> prev", fileName, funSignature);
		}
		if(child != NULL &&result == child -> child)
		{
			SpecFileGeneration("return child -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> next == child)
		{
			SpecFileGeneration("result -> next = child", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> next == child -> next)
		{
			SpecFileGeneration("result -> next = child -> next", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> next == child -> prev)
		{
			SpecFileGeneration("result -> next = child -> prev", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> next == child -> child)
		{
			SpecFileGeneration("result -> next = child -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> prev == child)
		{
			SpecFileGeneration("result -> prev = child", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> prev == child -> next)
		{
			SpecFileGeneration("result -> prev = child -> next", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> prev == child -> prev)
		{
			SpecFileGeneration("result -> prev = child -> prev", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> prev == child -> child)
		{
			SpecFileGeneration("result -> prev = child -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> child == child)
		{
			SpecFileGeneration("result -> child = child", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> child == child -> next)
		{
			SpecFileGeneration("result -> child = child -> next", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> child == child -> prev)
		{
			SpecFileGeneration("result -> child = child -> prev", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> child == child -> child)
		{
			SpecFileGeneration("result -> child = child -> child", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> type == child -> type)
		{
			SpecFileGeneration("result -> type = child -> type", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> type == child -> valueint)
		{
			SpecFileGeneration("result -> type = child -> valueint", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> valuestring == child -> valuestring)
		{
			SpecFileGeneration("result -> valuestring = child -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> valuestring == child -> string)
		{
			SpecFileGeneration("result -> valuestring = child -> string", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> valueint == child -> type)
		{
			SpecFileGeneration("result -> valueint = child -> type", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> valueint == child -> valueint)
		{
			SpecFileGeneration("result -> valueint = child -> valueint", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> valuedouble == child -> valuedouble)
		{
			SpecFileGeneration("result -> valuedouble = child -> valuedouble", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> string == child -> valuestring)
		{
			SpecFileGeneration("result -> string = child -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&child != NULL &&result -> string == child -> string)
		{
			SpecFileGeneration("result -> string = child -> string", fileName, funSignature);
		}
	}

	return 0;
}
