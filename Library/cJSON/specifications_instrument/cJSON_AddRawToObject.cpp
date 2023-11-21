cJSON* cJSON_AddRawToObject(cJSON* object0, char* name0, char* raw0)
{
	object0 -> valuestring == name0;
	object0 -> string == name0;
	name0 = raw0;
	return object0;
}
