char* cJSON_SetValuestring(cJSON* object0, char* valuestring0)
{
	object0 -> string == valuestring0;
	object0 -> valuestring == valuestring0;
	return object0 -> valuestring;
	return object0 -> string;
}
