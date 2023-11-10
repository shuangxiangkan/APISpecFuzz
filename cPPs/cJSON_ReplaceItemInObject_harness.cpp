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

		char _newitem[4096];
		if (fgets(_newitem, sizeof(_newitem), stdin) == NULL) {
			return 1;
		}
		cJSON *newitem = cJSON_Parse(_newitem);

	
		cJSON_bool result = cJSON_ReplaceItemInObject(object, string, newitem);

		std::string fileName = "cJSON_ReplaceItemInObject.cpp";
		std::string funSignature = "cJSON_bool cJSON_ReplaceItemInObject(cJSON* object, char* string, cJSON* newitem)";
		
		if(object != NULL &&object -> valuestring == string)
		{
			SpecFileGeneration("object -> valuestring = string", fileName, funSignature);
		}
		if(object != NULL &&object -> string == string)
		{
			SpecFileGeneration("object -> string = string", fileName, funSignature);
		}
		if(object == newitem)
		{
			SpecFileGeneration("object = newitem", fileName, funSignature);
		}
		if(newitem != NULL &&object == newitem -> next)
		{
			SpecFileGeneration("object = newitem -> next", fileName, funSignature);
		}
		if(newitem != NULL &&object == newitem -> prev)
		{
			SpecFileGeneration("object = newitem -> prev", fileName, funSignature);
		}
		if(newitem != NULL &&object == newitem -> child)
		{
			SpecFileGeneration("object = newitem -> child", fileName, funSignature);
		}
		if(object != NULL &&object -> next == newitem)
		{
			SpecFileGeneration("object -> next = newitem", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> next == newitem -> next)
		{
			SpecFileGeneration("object -> next = newitem -> next", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> next == newitem -> prev)
		{
			SpecFileGeneration("object -> next = newitem -> prev", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> next == newitem -> child)
		{
			SpecFileGeneration("object -> next = newitem -> child", fileName, funSignature);
		}
		if(object != NULL &&object -> prev == newitem)
		{
			SpecFileGeneration("object -> prev = newitem", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> prev == newitem -> next)
		{
			SpecFileGeneration("object -> prev = newitem -> next", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> prev == newitem -> prev)
		{
			SpecFileGeneration("object -> prev = newitem -> prev", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> prev == newitem -> child)
		{
			SpecFileGeneration("object -> prev = newitem -> child", fileName, funSignature);
		}
		if(object != NULL &&object -> child == newitem)
		{
			SpecFileGeneration("object -> child = newitem", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> child == newitem -> next)
		{
			SpecFileGeneration("object -> child = newitem -> next", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> child == newitem -> prev)
		{
			SpecFileGeneration("object -> child = newitem -> prev", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> child == newitem -> child)
		{
			SpecFileGeneration("object -> child = newitem -> child", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> type == newitem -> type)
		{
			SpecFileGeneration("object -> type = newitem -> type", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> type == newitem -> valueint)
		{
			SpecFileGeneration("object -> type = newitem -> valueint", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> valuestring == newitem -> valuestring)
		{
			SpecFileGeneration("object -> valuestring = newitem -> valuestring", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> valuestring == newitem -> string)
		{
			SpecFileGeneration("object -> valuestring = newitem -> string", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> valueint == newitem -> type)
		{
			SpecFileGeneration("object -> valueint = newitem -> type", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> valueint == newitem -> valueint)
		{
			SpecFileGeneration("object -> valueint = newitem -> valueint", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> valuedouble == newitem -> valuedouble)
		{
			SpecFileGeneration("object -> valuedouble = newitem -> valuedouble", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> string == newitem -> valuestring)
		{
			SpecFileGeneration("object -> string = newitem -> valuestring", fileName, funSignature);
		}
		if(object != NULL &&newitem != NULL &&object -> string == newitem -> string)
		{
			SpecFileGeneration("object -> string = newitem -> string", fileName, funSignature);
		}
		if(newitem != NULL &&string == newitem -> valuestring)
		{
			SpecFileGeneration("string = newitem -> valuestring", fileName, funSignature);
		}
		if(newitem != NULL &&string == newitem -> string)
		{
			SpecFileGeneration("string = newitem -> string", fileName, funSignature);
		}
	}

	return 0;
}
