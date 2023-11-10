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

		char _item[4096];
		if (fgets(_item, sizeof(_item), stdin) == NULL) {
			return 1;
		}
		cJSON *item = cJSON_Parse(_item);

	
		cJSON_bool result = cJSON_AddItemReferenceToArray(array, item);

		std::string fileName = "cJSON_AddItemReferenceToArray.cpp";
		std::string funSignature = "cJSON_bool cJSON_AddItemReferenceToArray(cJSON* array, cJSON* item)";
		
		if(array == item)
		{
			SpecFileGeneration("array = item", fileName, funSignature);
		}
		if(item != NULL &&array == item -> next)
		{
			SpecFileGeneration("array = item -> next", fileName, funSignature);
		}
		if(item != NULL &&array == item -> prev)
		{
			SpecFileGeneration("array = item -> prev", fileName, funSignature);
		}
		if(item != NULL &&array == item -> child)
		{
			SpecFileGeneration("array = item -> child", fileName, funSignature);
		}
		if(array != NULL &&array -> next == item)
		{
			SpecFileGeneration("array -> next = item", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> next == item -> next)
		{
			SpecFileGeneration("array -> next = item -> next", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> next == item -> prev)
		{
			SpecFileGeneration("array -> next = item -> prev", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> next == item -> child)
		{
			SpecFileGeneration("array -> next = item -> child", fileName, funSignature);
		}
		if(array != NULL &&array -> prev == item)
		{
			SpecFileGeneration("array -> prev = item", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> prev == item -> next)
		{
			SpecFileGeneration("array -> prev = item -> next", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> prev == item -> prev)
		{
			SpecFileGeneration("array -> prev = item -> prev", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> prev == item -> child)
		{
			SpecFileGeneration("array -> prev = item -> child", fileName, funSignature);
		}
		if(array != NULL &&array -> child == item)
		{
			SpecFileGeneration("array -> child = item", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> child == item -> next)
		{
			SpecFileGeneration("array -> child = item -> next", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> child == item -> prev)
		{
			SpecFileGeneration("array -> child = item -> prev", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> child == item -> child)
		{
			SpecFileGeneration("array -> child = item -> child", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> type == item -> type)
		{
			SpecFileGeneration("array -> type = item -> type", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> type == item -> valueint)
		{
			SpecFileGeneration("array -> type = item -> valueint", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> valuestring == item -> valuestring)
		{
			SpecFileGeneration("array -> valuestring = item -> valuestring", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> valuestring == item -> string)
		{
			SpecFileGeneration("array -> valuestring = item -> string", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> valueint == item -> type)
		{
			SpecFileGeneration("array -> valueint = item -> type", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> valueint == item -> valueint)
		{
			SpecFileGeneration("array -> valueint = item -> valueint", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> valuedouble == item -> valuedouble)
		{
			SpecFileGeneration("array -> valuedouble = item -> valuedouble", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> string == item -> valuestring)
		{
			SpecFileGeneration("array -> string = item -> valuestring", fileName, funSignature);
		}
		if(array != NULL &&item != NULL &&array -> string == item -> string)
		{
			SpecFileGeneration("array -> string = item -> string", fileName, funSignature);
		}
	}

	return 0;
}
