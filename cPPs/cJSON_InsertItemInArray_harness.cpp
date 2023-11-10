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

		int which;
		scanf("%d", &which);

		char _newitem[4096];
		if (fgets(_newitem, sizeof(_newitem), stdin) == NULL) {
			return 1;
		}
		cJSON *newitem = cJSON_Parse(_newitem);

	
		cJSON_bool result = cJSON_InsertItemInArray(array, which, newitem);

		std::string fileName = "cJSON_InsertItemInArray.cpp";
		std::string funSignature = "cJSON_bool cJSON_InsertItemInArray(cJSON* array, int which, cJSON* newitem)";
		
		if(array != NULL &&array -> type == which)
		{
			SpecFileGeneration("array -> type = which", fileName, funSignature);
		}
		if(array != NULL &&array -> valueint == which)
		{
			SpecFileGeneration("array -> valueint = which", fileName, funSignature);
		}
		if(array == newitem)
		{
			SpecFileGeneration("array = newitem", fileName, funSignature);
		}
		if(newitem != NULL &&array == newitem -> next)
		{
			SpecFileGeneration("array = newitem -> next", fileName, funSignature);
		}
		if(newitem != NULL &&array == newitem -> prev)
		{
			SpecFileGeneration("array = newitem -> prev", fileName, funSignature);
		}
		if(newitem != NULL &&array == newitem -> child)
		{
			SpecFileGeneration("array = newitem -> child", fileName, funSignature);
		}
		if(array != NULL &&array -> next == newitem)
		{
			SpecFileGeneration("array -> next = newitem", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> next == newitem -> next)
		{
			SpecFileGeneration("array -> next = newitem -> next", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> next == newitem -> prev)
		{
			SpecFileGeneration("array -> next = newitem -> prev", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> next == newitem -> child)
		{
			SpecFileGeneration("array -> next = newitem -> child", fileName, funSignature);
		}
		if(array != NULL &&array -> prev == newitem)
		{
			SpecFileGeneration("array -> prev = newitem", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> prev == newitem -> next)
		{
			SpecFileGeneration("array -> prev = newitem -> next", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> prev == newitem -> prev)
		{
			SpecFileGeneration("array -> prev = newitem -> prev", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> prev == newitem -> child)
		{
			SpecFileGeneration("array -> prev = newitem -> child", fileName, funSignature);
		}
		if(array != NULL &&array -> child == newitem)
		{
			SpecFileGeneration("array -> child = newitem", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> child == newitem -> next)
		{
			SpecFileGeneration("array -> child = newitem -> next", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> child == newitem -> prev)
		{
			SpecFileGeneration("array -> child = newitem -> prev", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> child == newitem -> child)
		{
			SpecFileGeneration("array -> child = newitem -> child", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> type == newitem -> type)
		{
			SpecFileGeneration("array -> type = newitem -> type", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> type == newitem -> valueint)
		{
			SpecFileGeneration("array -> type = newitem -> valueint", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> valuestring == newitem -> valuestring)
		{
			SpecFileGeneration("array -> valuestring = newitem -> valuestring", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> valuestring == newitem -> string)
		{
			SpecFileGeneration("array -> valuestring = newitem -> string", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> valueint == newitem -> type)
		{
			SpecFileGeneration("array -> valueint = newitem -> type", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> valueint == newitem -> valueint)
		{
			SpecFileGeneration("array -> valueint = newitem -> valueint", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> valuedouble == newitem -> valuedouble)
		{
			SpecFileGeneration("array -> valuedouble = newitem -> valuedouble", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> string == newitem -> valuestring)
		{
			SpecFileGeneration("array -> string = newitem -> valuestring", fileName, funSignature);
		}
		if(array != NULL &&newitem != NULL &&array -> string == newitem -> string)
		{
			SpecFileGeneration("array -> string = newitem -> string", fileName, funSignature);
		}
		if(newitem != NULL &&which == newitem -> type)
		{
			SpecFileGeneration("which = newitem -> type", fileName, funSignature);
		}
		if(newitem != NULL &&which == newitem -> valueint)
		{
			SpecFileGeneration("which = newitem -> valueint", fileName, funSignature);
		}
	}

	return 0;
}
