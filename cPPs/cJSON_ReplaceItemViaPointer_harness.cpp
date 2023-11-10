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

		char _replacement[4096];
		if (fgets(_replacement, sizeof(_replacement), stdin) == NULL) {
			return 1;
		}
		cJSON *replacement = cJSON_Parse(_replacement);

	
		cJSON_bool result = cJSON_ReplaceItemViaPointer(parent, item, replacement);

		std::string fileName = "cJSON_ReplaceItemViaPointer.cpp";
		std::string funSignature = "cJSON_bool cJSON_ReplaceItemViaPointer(cJSON* parent, cJSON* item, cJSON* replacement)";
		
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
		if(parent == replacement)
		{
			SpecFileGeneration("parent = replacement", fileName, funSignature);
		}
		if(replacement != NULL &&parent == replacement -> next)
		{
			SpecFileGeneration("parent = replacement -> next", fileName, funSignature);
		}
		if(replacement != NULL &&parent == replacement -> prev)
		{
			SpecFileGeneration("parent = replacement -> prev", fileName, funSignature);
		}
		if(replacement != NULL &&parent == replacement -> child)
		{
			SpecFileGeneration("parent = replacement -> child", fileName, funSignature);
		}
		if(parent != NULL &&parent -> next == replacement)
		{
			SpecFileGeneration("parent -> next = replacement", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> next == replacement -> next)
		{
			SpecFileGeneration("parent -> next = replacement -> next", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> next == replacement -> prev)
		{
			SpecFileGeneration("parent -> next = replacement -> prev", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> next == replacement -> child)
		{
			SpecFileGeneration("parent -> next = replacement -> child", fileName, funSignature);
		}
		if(parent != NULL &&parent -> prev == replacement)
		{
			SpecFileGeneration("parent -> prev = replacement", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> prev == replacement -> next)
		{
			SpecFileGeneration("parent -> prev = replacement -> next", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> prev == replacement -> prev)
		{
			SpecFileGeneration("parent -> prev = replacement -> prev", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> prev == replacement -> child)
		{
			SpecFileGeneration("parent -> prev = replacement -> child", fileName, funSignature);
		}
		if(parent != NULL &&parent -> child == replacement)
		{
			SpecFileGeneration("parent -> child = replacement", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> child == replacement -> next)
		{
			SpecFileGeneration("parent -> child = replacement -> next", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> child == replacement -> prev)
		{
			SpecFileGeneration("parent -> child = replacement -> prev", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> child == replacement -> child)
		{
			SpecFileGeneration("parent -> child = replacement -> child", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> type == replacement -> type)
		{
			SpecFileGeneration("parent -> type = replacement -> type", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> type == replacement -> valueint)
		{
			SpecFileGeneration("parent -> type = replacement -> valueint", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> valuestring == replacement -> valuestring)
		{
			SpecFileGeneration("parent -> valuestring = replacement -> valuestring", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> valuestring == replacement -> string)
		{
			SpecFileGeneration("parent -> valuestring = replacement -> string", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> valueint == replacement -> type)
		{
			SpecFileGeneration("parent -> valueint = replacement -> type", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> valueint == replacement -> valueint)
		{
			SpecFileGeneration("parent -> valueint = replacement -> valueint", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> valuedouble == replacement -> valuedouble)
		{
			SpecFileGeneration("parent -> valuedouble = replacement -> valuedouble", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> string == replacement -> valuestring)
		{
			SpecFileGeneration("parent -> string = replacement -> valuestring", fileName, funSignature);
		}
		if(parent != NULL &&replacement != NULL &&parent -> string == replacement -> string)
		{
			SpecFileGeneration("parent -> string = replacement -> string", fileName, funSignature);
		}
		if(item == replacement)
		{
			SpecFileGeneration("item = replacement", fileName, funSignature);
		}
		if(replacement != NULL &&item == replacement -> next)
		{
			SpecFileGeneration("item = replacement -> next", fileName, funSignature);
		}
		if(replacement != NULL &&item == replacement -> prev)
		{
			SpecFileGeneration("item = replacement -> prev", fileName, funSignature);
		}
		if(replacement != NULL &&item == replacement -> child)
		{
			SpecFileGeneration("item = replacement -> child", fileName, funSignature);
		}
		if(item != NULL &&item -> next == replacement)
		{
			SpecFileGeneration("item -> next = replacement", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> next == replacement -> next)
		{
			SpecFileGeneration("item -> next = replacement -> next", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> next == replacement -> prev)
		{
			SpecFileGeneration("item -> next = replacement -> prev", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> next == replacement -> child)
		{
			SpecFileGeneration("item -> next = replacement -> child", fileName, funSignature);
		}
		if(item != NULL &&item -> prev == replacement)
		{
			SpecFileGeneration("item -> prev = replacement", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> prev == replacement -> next)
		{
			SpecFileGeneration("item -> prev = replacement -> next", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> prev == replacement -> prev)
		{
			SpecFileGeneration("item -> prev = replacement -> prev", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> prev == replacement -> child)
		{
			SpecFileGeneration("item -> prev = replacement -> child", fileName, funSignature);
		}
		if(item != NULL &&item -> child == replacement)
		{
			SpecFileGeneration("item -> child = replacement", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> child == replacement -> next)
		{
			SpecFileGeneration("item -> child = replacement -> next", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> child == replacement -> prev)
		{
			SpecFileGeneration("item -> child = replacement -> prev", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> child == replacement -> child)
		{
			SpecFileGeneration("item -> child = replacement -> child", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> type == replacement -> type)
		{
			SpecFileGeneration("item -> type = replacement -> type", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> type == replacement -> valueint)
		{
			SpecFileGeneration("item -> type = replacement -> valueint", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> valuestring == replacement -> valuestring)
		{
			SpecFileGeneration("item -> valuestring = replacement -> valuestring", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> valuestring == replacement -> string)
		{
			SpecFileGeneration("item -> valuestring = replacement -> string", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> valueint == replacement -> type)
		{
			SpecFileGeneration("item -> valueint = replacement -> type", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> valueint == replacement -> valueint)
		{
			SpecFileGeneration("item -> valueint = replacement -> valueint", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> valuedouble == replacement -> valuedouble)
		{
			SpecFileGeneration("item -> valuedouble = replacement -> valuedouble", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> string == replacement -> valuestring)
		{
			SpecFileGeneration("item -> string = replacement -> valuestring", fileName, funSignature);
		}
		if(item != NULL &&replacement != NULL &&item -> string == replacement -> string)
		{
			SpecFileGeneration("item -> string = replacement -> string", fileName, funSignature);
		}
	}

	return 0;
}
