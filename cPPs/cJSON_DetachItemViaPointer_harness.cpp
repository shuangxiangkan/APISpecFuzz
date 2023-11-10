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
		char _parent[4096];
		if (fgets(_parent, sizeof(_parent), stdin) == NULL) {
			return 1;
		}
		cJSON *parent = cJSON_Parse(_parent);

		char _item[4096];
		if (fgets(_item, sizeof(_item), stdin) == NULL) {
			return 1;
		}
		cJSON *item = cJSON_Parse(_item);

	
		cJSON* result = cJSON_DetachItemViaPointer(parent, item);

		std::string fileName = "cJSON_DetachItemViaPointer.cpp";
		std::string funSignature = "cJSON* cJSON_DetachItemViaPointer(cJSON* parent, cJSON* item)";
		
		if(result == parent)
		{
			SpecFileGeneration("return parent", fileName, funSignature);
		}
		if(parent != NULL &&result == parent -> next)
		{
			SpecFileGeneration("return parent -> next", fileName, funSignature);
		}
		if(parent != NULL &&result == parent -> prev)
		{
			SpecFileGeneration("return parent -> prev", fileName, funSignature);
		}
		if(parent != NULL &&result == parent -> child)
		{
			SpecFileGeneration("return parent -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> next == parent)
		{
			SpecFileGeneration("result -> next = parent", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> next == parent -> next)
		{
			SpecFileGeneration("result -> next = parent -> next", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> next == parent -> prev)
		{
			SpecFileGeneration("result -> next = parent -> prev", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> next == parent -> child)
		{
			SpecFileGeneration("result -> next = parent -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> prev == parent)
		{
			SpecFileGeneration("result -> prev = parent", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> prev == parent -> next)
		{
			SpecFileGeneration("result -> prev = parent -> next", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> prev == parent -> prev)
		{
			SpecFileGeneration("result -> prev = parent -> prev", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> prev == parent -> child)
		{
			SpecFileGeneration("result -> prev = parent -> child", fileName, funSignature);
		}
		if(result != NULL &&result -> child == parent)
		{
			SpecFileGeneration("result -> child = parent", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> child == parent -> next)
		{
			SpecFileGeneration("result -> child = parent -> next", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> child == parent -> prev)
		{
			SpecFileGeneration("result -> child = parent -> prev", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> child == parent -> child)
		{
			SpecFileGeneration("result -> child = parent -> child", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> type == parent -> type)
		{
			SpecFileGeneration("result -> type = parent -> type", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> type == parent -> valueint)
		{
			SpecFileGeneration("result -> type = parent -> valueint", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> valuestring == parent -> valuestring)
		{
			SpecFileGeneration("result -> valuestring = parent -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> valuestring == parent -> string)
		{
			SpecFileGeneration("result -> valuestring = parent -> string", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> valueint == parent -> type)
		{
			SpecFileGeneration("result -> valueint = parent -> type", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> valueint == parent -> valueint)
		{
			SpecFileGeneration("result -> valueint = parent -> valueint", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> valuedouble == parent -> valuedouble)
		{
			SpecFileGeneration("result -> valuedouble = parent -> valuedouble", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> string == parent -> valuestring)
		{
			SpecFileGeneration("result -> string = parent -> valuestring", fileName, funSignature);
		}
		if(result != NULL &&parent != NULL &&result -> string == parent -> string)
		{
			SpecFileGeneration("result -> string = parent -> string", fileName, funSignature);
		}
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
		if(parent == item)
		{
			SpecFileGeneration("parent = item", fileName, funSignature);
		}
		if(item != NULL &&parent == item -> next)
		{
			SpecFileGeneration("parent = item -> next", fileName, funSignature);
		}
		if(item != NULL &&parent == item -> prev)
		{
			SpecFileGeneration("parent = item -> prev", fileName, funSignature);
		}
		if(item != NULL &&parent == item -> child)
		{
			SpecFileGeneration("parent = item -> child", fileName, funSignature);
		}
		if(parent != NULL &&parent -> next == item)
		{
			SpecFileGeneration("parent -> next = item", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> next == item -> next)
		{
			SpecFileGeneration("parent -> next = item -> next", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> next == item -> prev)
		{
			SpecFileGeneration("parent -> next = item -> prev", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> next == item -> child)
		{
			SpecFileGeneration("parent -> next = item -> child", fileName, funSignature);
		}
		if(parent != NULL &&parent -> prev == item)
		{
			SpecFileGeneration("parent -> prev = item", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> prev == item -> next)
		{
			SpecFileGeneration("parent -> prev = item -> next", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> prev == item -> prev)
		{
			SpecFileGeneration("parent -> prev = item -> prev", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> prev == item -> child)
		{
			SpecFileGeneration("parent -> prev = item -> child", fileName, funSignature);
		}
		if(parent != NULL &&parent -> child == item)
		{
			SpecFileGeneration("parent -> child = item", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> child == item -> next)
		{
			SpecFileGeneration("parent -> child = item -> next", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> child == item -> prev)
		{
			SpecFileGeneration("parent -> child = item -> prev", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> child == item -> child)
		{
			SpecFileGeneration("parent -> child = item -> child", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> type == item -> type)
		{
			SpecFileGeneration("parent -> type = item -> type", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> type == item -> valueint)
		{
			SpecFileGeneration("parent -> type = item -> valueint", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> valuestring == item -> valuestring)
		{
			SpecFileGeneration("parent -> valuestring = item -> valuestring", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> valuestring == item -> string)
		{
			SpecFileGeneration("parent -> valuestring = item -> string", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> valueint == item -> type)
		{
			SpecFileGeneration("parent -> valueint = item -> type", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> valueint == item -> valueint)
		{
			SpecFileGeneration("parent -> valueint = item -> valueint", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> valuedouble == item -> valuedouble)
		{
			SpecFileGeneration("parent -> valuedouble = item -> valuedouble", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> string == item -> valuestring)
		{
			SpecFileGeneration("parent -> string = item -> valuestring", fileName, funSignature);
		}
		if(parent != NULL &&item != NULL &&parent -> string == item -> string)
		{
			SpecFileGeneration("parent -> string = item -> string", fileName, funSignature);
		}
	}

	return 0;
}
