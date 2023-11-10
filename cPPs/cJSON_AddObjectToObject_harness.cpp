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

		char name[1024];
		if (fgets(name, sizeof(name), stdin) == NULL) {
			return 1;
		}

	
		cJSON* result = cJSON_AddObjectToObject(object, name);

		std::string fileName = "cJSON_AddObjectToObject.cpp";
		std::string funSignature = "cJSON* cJSON_AddObjectToObject(cJSON* object, char* name)";
		
		if(result == object)
		{
			SpecFileGeneration("return object", fileName, funSignature);
		}
		if(object != NULL &&result == object -> next)
		{
			SpecFileGeneration("return object -> next", fileName, funSignature);
		}
		if(object != NULL &&result == object -> prev)
		{
			SpecFileGeneration("return object -> prev", fileName, funSignature);
		}
		if(object != NULL &&result == object -> child)
		{
			SpecFileGeneration("return object -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> next == object)
		{
			SpecFileGeneration("result -> next = object", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> next == object -> next)
		{
			SpecFileGeneration("result -> next = object -> next", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> next == object -> prev)
		{
			SpecFileGeneration("result -> next = object -> prev", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> next == object -> child)
		{
			SpecFileGeneration("result -> next = object -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> prev == object)
		{
			SpecFileGeneration("result -> prev = object", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> prev == object -> next)
		{
			SpecFileGeneration("result -> prev = object -> next", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> prev == object -> prev)
		{
			SpecFileGeneration("result -> prev = object -> prev", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> prev == object -> child)
		{
			SpecFileGeneration("result -> prev = object -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> child == object)
		{
			SpecFileGeneration("result -> child = object", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> child == object -> next)
		{
			SpecFileGeneration("result -> child = object -> next", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> child == object -> prev)
		{
			SpecFileGeneration("result -> child = object -> prev", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> child == object -> child)
		{
			SpecFileGeneration("result -> child = object -> child", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> type == object -> type)
		{
			SpecFileGeneration("result -> type = object -> type", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> type == object -> valueint)
		{
			SpecFileGeneration("result -> type = object -> valueint", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valuestring == object -> valuestring)
		{
			SpecFileGeneration("result -> valuestring = object -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valuestring == object -> string)
		{
			SpecFileGeneration("result -> valuestring = object -> string", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valueint == object -> type)
		{
			SpecFileGeneration("result -> valueint = object -> type", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valueint == object -> valueint)
		{
			SpecFileGeneration("result -> valueint = object -> valueint", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valuedouble == object -> valuedouble)
		{
			SpecFileGeneration("result -> valuedouble = object -> valuedouble", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> string == object -> valuestring)
		{
			SpecFileGeneration("result -> string = object -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> string == object -> string)
		{
			SpecFileGeneration("result -> string = object -> string", fileName, funSignature);
		}
		if(result != NULL &&result -> valuestring == name)
		{
			SpecFileGeneration("result -> valuestring = name", fileName, funSignature);
		}
		if(result != NULL &&result -> string == name)
		{
			SpecFileGeneration("result -> string = name", fileName, funSignature);
		}
		if(object != NULL &&object -> valuestring == name)
		{
			SpecFileGeneration("object -> valuestring = name", fileName, funSignature);
		}
		if(object != NULL &&object -> string == name)
		{
			SpecFileGeneration("object -> string = name", fileName, funSignature);
		}
	}

	return 0;
}
