cJSON* cJSON_CreateStringReference(const char *string)
{
	cJSON* result = cJSON_Createobject();
	result -> string = string;
	result -> valuestring = string;
	return result;
}
