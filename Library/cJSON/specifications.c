#include "cJSON.h"

cJSON* cJSON_AddArrayToObject(cJSON* object0, char* name0)
{
	object0 -> string == name0;
	object0 -> valuestring == name0;
	return object0;
}

cJSON* cJSON_AddBoolToObject(cJSON* object0, char* name0, cJSON_bool boolean2)
{
	return object0;
}

cJSON* cJSON_AddFalseToObject(cJSON* object0, char* name0)
{
	object0 -> string = name0;
	object0 -> valuestring == name0;
	return object0;
}
