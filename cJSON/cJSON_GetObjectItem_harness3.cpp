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

	__AFL_INIT();

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

	
		cJSON* result = cJSON_GetObjectItem(object, string);

		std::string fileName = "cJSON_GetObjectItem.cpp";
		std::string funSignature = "cJSON* cJSON_GetObjectItem(cJSON* object, char* string)";
		
		if(result != NULL && object != NULL && result == object)
		{
			SpecFileGeneration("result = object", fileName, funSignature);
		}
		if(object != NULL &&result != NULL && object -> next != NULL && result == object -> next)
		{
			SpecFileGeneration("result = object -> next", fileName, funSignature);
		}
		if(object != NULL &&result != NULL && object -> prev != NULL && result == object -> prev)
		{
			SpecFileGeneration("result = object -> prev", fileName, funSignature);
		}
		if(object != NULL &&result != NULL && object -> child != NULL && result == object -> child)
		{
			SpecFileGeneration("result = object -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> next != NULL && object != NULL && result -> next == object)
		{
			SpecFileGeneration("result -> next = object", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> next != NULL && object -> next != NULL && result -> next == object -> next)
		{
			SpecFileGeneration("result -> next = object -> next", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> next != NULL && object -> prev != NULL && result -> next == object -> prev)
		{
			SpecFileGeneration("result -> next = object -> prev", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> next != NULL && object -> child != NULL && result -> next == object -> child)
		{
			SpecFileGeneration("result -> next = object -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> prev != NULL && object != NULL && result -> prev == object)
		{
			SpecFileGeneration("result -> prev = object", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> prev != NULL && object -> next != NULL && result -> prev == object -> next)
		{
			SpecFileGeneration("result -> prev = object -> next", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> prev != NULL && object -> prev != NULL && result -> prev == object -> prev)
		{
			SpecFileGeneration("result -> prev = object -> prev", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> prev != NULL && object -> child != NULL && result -> prev == object -> child)
		{
			SpecFileGeneration("result -> prev = object -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> child != NULL && object != NULL && result -> child == object)
		{
			SpecFileGeneration("result -> child = object", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> child != NULL && object -> next != NULL && result -> child == object -> next)
		{
			SpecFileGeneration("result -> child = object -> next", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> child != NULL && object -> prev != NULL && result -> child == object -> prev)
		{
			SpecFileGeneration("result -> child = object -> prev", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> child != NULL && object -> child != NULL && result -> child == object -> child)
		{
			SpecFileGeneration("result -> child = object -> child", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> type != NULL && object -> type != NULL && result -> type == object -> type)
		{
			SpecFileGeneration("result -> type = object -> type", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> type != NULL && object -> valueint != NULL && result -> type == object -> valueint)
		{
			SpecFileGeneration("result -> type = object -> valueint", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valuestring != NULL && object -> valuestring != NULL && result -> valuestring == object -> valuestring)
		{
			SpecFileGeneration("result -> valuestring = object -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valuestring != NULL && object -> string != NULL && result -> valuestring == object -> string)
		{
			SpecFileGeneration("result -> valuestring = object -> string", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valueint != NULL && object -> type != NULL && result -> valueint == object -> type)
		{
			SpecFileGeneration("result -> valueint = object -> type", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valueint != NULL && object -> valueint != NULL && result -> valueint == object -> valueint)
		{
			SpecFileGeneration("result -> valueint = object -> valueint", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> valuedouble != NULL && object -> valuedouble != NULL && result -> valuedouble == object -> valuedouble)
		{
			SpecFileGeneration("result -> valuedouble = object -> valuedouble", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> string != NULL && object -> valuestring != NULL && result -> string == object -> valuestring)
		{
			SpecFileGeneration("result -> string = object -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&object != NULL &&result -> string != NULL && object -> string != NULL && result -> string == object -> string)
		{
			SpecFileGeneration("result -> string = object -> string", fileName, funSignature);
		}
		if(result != NULL &&result -> valuestring != NULL && string != NULL && result -> valuestring == string)
		{
			SpecFileGeneration("result -> valuestring = string", fileName, funSignature);
		}
		if(result != NULL &&result -> string != NULL && string != NULL && result -> string == string)
		{
			SpecFileGeneration("result -> string = string", fileName, funSignature);
		}
		if(object != NULL &&object -> valuestring != NULL && string != NULL && object -> valuestring == string)
		{
			SpecFileGeneration("object -> valuestring = string", fileName, funSignature);
		}
		if(object != NULL &&object -> string != NULL && string != NULL && object -> string == string)
		{
			SpecFileGeneration("object -> string = string", fileName, funSignature);
		}
	}

	return 0;
}
