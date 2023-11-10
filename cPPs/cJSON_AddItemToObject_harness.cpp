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

		char string[1024];
		if (fgets(string, sizeof(string), stdin) == NULL) {
			return 1;
		}

		char _item[4096];
		if (fgets(_item, sizeof(_item), stdin) == NULL) {
			return 1;
		}
		cJSON *item = cJSON_Parse(_item);

	
		cJSON_bool result = cJSON_AddItemToObject(object, string, item);

		std::string fileName = "cJSON_AddItemToObject.cpp";
		std::string funSignature = "cJSON_bool cJSON_AddItemToObject(cJSON* object, char* string, cJSON* item)";
		
		if(object != NULL &&object -> valuestring == string)
		{
			SpecFileGeneration("object -> valuestring = string", fileName, funSignature);
		}
		if(object != NULL &&object -> string == string)
		{
			SpecFileGeneration("object -> string = string", fileName, funSignature);
		}
		if(object == item)
		{
			SpecFileGeneration("object = item", fileName, funSignature);
		}
		if(item != NULL &&object == item -> next)
		{
			SpecFileGeneration("object = item -> next", fileName, funSignature);
		}
		if(item != NULL &&object == item -> prev)
		{
			SpecFileGeneration("object = item -> prev", fileName, funSignature);
		}
		if(item != NULL &&object == item -> child)
		{
			SpecFileGeneration("object = item -> child", fileName, funSignature);
		}
		if(object != NULL &&object -> next == item)
		{
			SpecFileGeneration("object -> next = item", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> next == item -> next)
		{
			SpecFileGeneration("object -> next = item -> next", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> next == item -> prev)
		{
			SpecFileGeneration("object -> next = item -> prev", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> next == item -> child)
		{
			SpecFileGeneration("object -> next = item -> child", fileName, funSignature);
		}
		if(object != NULL &&object -> prev == item)
		{
			SpecFileGeneration("object -> prev = item", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> prev == item -> next)
		{
			SpecFileGeneration("object -> prev = item -> next", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> prev == item -> prev)
		{
			SpecFileGeneration("object -> prev = item -> prev", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> prev == item -> child)
		{
			SpecFileGeneration("object -> prev = item -> child", fileName, funSignature);
		}
		if(object != NULL &&object -> child == item)
		{
			SpecFileGeneration("object -> child = item", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> child == item -> next)
		{
			SpecFileGeneration("object -> child = item -> next", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> child == item -> prev)
		{
			SpecFileGeneration("object -> child = item -> prev", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> child == item -> child)
		{
			SpecFileGeneration("object -> child = item -> child", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> type == item -> type)
		{
			SpecFileGeneration("object -> type = item -> type", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> type == item -> valueint)
		{
			SpecFileGeneration("object -> type = item -> valueint", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> valuestring == item -> valuestring)
		{
			SpecFileGeneration("object -> valuestring = item -> valuestring", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> valuestring == item -> string)
		{
			SpecFileGeneration("object -> valuestring = item -> string", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> valueint == item -> type)
		{
			SpecFileGeneration("object -> valueint = item -> type", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> valueint == item -> valueint)
		{
			SpecFileGeneration("object -> valueint = item -> valueint", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> valuedouble == item -> valuedouble)
		{
			SpecFileGeneration("object -> valuedouble = item -> valuedouble", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> string == item -> valuestring)
		{
			SpecFileGeneration("object -> string = item -> valuestring", fileName, funSignature);
		}
		if(object != NULL &&item != NULL &&object -> string == item -> string)
		{
			SpecFileGeneration("object -> string = item -> string", fileName, funSignature);
		}
		if(item != NULL &&string == item -> valuestring)
		{
			SpecFileGeneration("string = item -> valuestring", fileName, funSignature);
		}
		if(item != NULL &&string == item -> string)
		{
			SpecFileGeneration("string = item -> string", fileName, funSignature);
		}
	}

	return 0;
}
