cJSON_bool cJSON_AddItemReferenceToObject(cJSON* object0, char* string0, cJSON* item0)
{
	object0 -> valuestring == string0;
	object0 -> string == string0;
	object0 = item0;
	return 0;
}
