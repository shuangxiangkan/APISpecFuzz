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
		char _a[4096];
		if (fgets(_a, sizeof(_a), stdin) == NULL) {
			return 1;
		}
		cJSON *a = cJSON_Parse(_a);

		char _b[4096];
		if (fgets(_b, sizeof(_b), stdin) == NULL) {
			return 1;
		}
		cJSON *b = cJSON_Parse(_b);

		cJSON_bool case_sensitive;
		scanf("%d", &case_sensitive);

	
		cJSON_bool result = cJSON_Compare(a, b, case_sensitive);

		std::string fileName = "cJSON_Compare.cpp";
		std::string funSignature = "cJSON_bool cJSON_Compare(cJSON* a, cJSON* b, cJSON_bool case_sensitive)";
		
		if(result == case_sensitive)
		{
			SpecFileGeneration("return case_sensitive", fileName, funSignature);
		}
		if(a == b)
		{
			SpecFileGeneration("a = b", fileName, funSignature);
		}
		if(b != NULL &&a == b -> next)
		{
			SpecFileGeneration("a = b -> next", fileName, funSignature);
		}
		if(b != NULL &&a == b -> prev)
		{
			SpecFileGeneration("a = b -> prev", fileName, funSignature);
		}
		if(b != NULL &&a == b -> child)
		{
			SpecFileGeneration("a = b -> child", fileName, funSignature);
		}
		if(a != NULL &&a -> next == b)
		{
			SpecFileGeneration("a -> next = b", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> next == b -> next)
		{
			SpecFileGeneration("a -> next = b -> next", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> next == b -> prev)
		{
			SpecFileGeneration("a -> next = b -> prev", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> next == b -> child)
		{
			SpecFileGeneration("a -> next = b -> child", fileName, funSignature);
		}
		if(a != NULL &&a -> prev == b)
		{
			SpecFileGeneration("a -> prev = b", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> prev == b -> next)
		{
			SpecFileGeneration("a -> prev = b -> next", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> prev == b -> prev)
		{
			SpecFileGeneration("a -> prev = b -> prev", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> prev == b -> child)
		{
			SpecFileGeneration("a -> prev = b -> child", fileName, funSignature);
		}
		if(a != NULL &&a -> child == b)
		{
			SpecFileGeneration("a -> child = b", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> child == b -> next)
		{
			SpecFileGeneration("a -> child = b -> next", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> child == b -> prev)
		{
			SpecFileGeneration("a -> child = b -> prev", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> child == b -> child)
		{
			SpecFileGeneration("a -> child = b -> child", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> type == b -> type)
		{
			SpecFileGeneration("a -> type = b -> type", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> type == b -> valueint)
		{
			SpecFileGeneration("a -> type = b -> valueint", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> valuestring == b -> valuestring)
		{
			SpecFileGeneration("a -> valuestring = b -> valuestring", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> valuestring == b -> string)
		{
			SpecFileGeneration("a -> valuestring = b -> string", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> valueint == b -> type)
		{
			SpecFileGeneration("a -> valueint = b -> type", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> valueint == b -> valueint)
		{
			SpecFileGeneration("a -> valueint = b -> valueint", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> valuedouble == b -> valuedouble)
		{
			SpecFileGeneration("a -> valuedouble = b -> valuedouble", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> string == b -> valuestring)
		{
			SpecFileGeneration("a -> string = b -> valuestring", fileName, funSignature);
		}
		if(a != NULL &&b != NULL &&a -> string == b -> string)
		{
			SpecFileGeneration("a -> string = b -> string", fileName, funSignature);
		}
	}

	return 0;
}
