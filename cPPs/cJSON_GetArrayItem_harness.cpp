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

		int index;
		scanf("%d", &index);

	
		cJSON* result = cJSON_GetArrayItem(array, index);

		std::string fileName = "cJSON_GetArrayItem.cpp";
		std::string funSignature = "cJSON* cJSON_GetArrayItem(cJSON* array, int index)";
		
		if(result == array)
		{
			SpecFileGeneration("return array", fileName, funSignature);
		}
		if(array != NULL &&result == array -> next)
		{
			SpecFileGeneration("return array -> next", fileName, funSignature);
		}
		if(array != NULL &&result == array -> prev)
		{
			SpecFileGeneration("return array -> prev", fileName, funSignature);
		}
		if(array != NULL &&result == array -> child)
		{
			SpecFileGeneration("return array -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> next == array)
		{
			SpecFileGeneration("result -> next = array", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> next == array -> next)
		{
			SpecFileGeneration("result -> next = array -> next", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> next == array -> prev)
		{
			SpecFileGeneration("result -> next = array -> prev", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> next == array -> child)
		{
			SpecFileGeneration("result -> next = array -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> prev == array)
		{
			SpecFileGeneration("result -> prev = array", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> prev == array -> next)
		{
			SpecFileGeneration("result -> prev = array -> next", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> prev == array -> prev)
		{
			SpecFileGeneration("result -> prev = array -> prev", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> prev == array -> child)
		{
			SpecFileGeneration("result -> prev = array -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> child == array)
		{
			SpecFileGeneration("result -> child = array", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> child == array -> next)
		{
			SpecFileGeneration("result -> child = array -> next", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> child == array -> prev)
		{
			SpecFileGeneration("result -> child = array -> prev", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> child == array -> child)
		{
			SpecFileGeneration("result -> child = array -> child", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> type == array -> type)
		{
			SpecFileGeneration("result -> type = array -> type", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> type == array -> valueint)
		{
			SpecFileGeneration("result -> type = array -> valueint", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> valuestring == array -> valuestring)
		{
			SpecFileGeneration("result -> valuestring = array -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> valuestring == array -> string)
		{
			SpecFileGeneration("result -> valuestring = array -> string", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> valueint == array -> type)
		{
			SpecFileGeneration("result -> valueint = array -> type", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> valueint == array -> valueint)
		{
			SpecFileGeneration("result -> valueint = array -> valueint", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> valuedouble == array -> valuedouble)
		{
			SpecFileGeneration("result -> valuedouble = array -> valuedouble", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> string == array -> valuestring)
		{
			SpecFileGeneration("result -> string = array -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&array != NULL &&result -> string == array -> string)
		{
			SpecFileGeneration("result -> string = array -> string", fileName, funSignature);
		}
		if(result != NULL &&result -> type == index)
		{
			SpecFileGeneration("result -> type = index", fileName, funSignature);
		}
		if(result != NULL &&result -> valueint == index)
		{
			SpecFileGeneration("result -> valueint = index", fileName, funSignature);
		}
		if(array != NULL &&array -> type == index)
		{
			SpecFileGeneration("array -> type = index", fileName, funSignature);
		}
		if(array != NULL &&array -> valueint == index)
		{
			SpecFileGeneration("array -> valueint = index", fileName, funSignature);
		}
	}

	return 0;
}
