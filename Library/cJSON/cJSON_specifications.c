#include "cJSON.h"

#define NULL ((void *)0)
#define STATIC_OBJECT malloc(10)

__attribute__((annotate("ALLOC_RET")))
CJSON_PUBLIC(cJSON *) cJSON_CreateObject(void)
{
    return STATIC_OBJECT;
}

CJSON_PUBLIC(cJSON_bool) cJSON_AddItemToObjectCS(cJSON* object0,  const char* string0, cJSON* item0)
{
	object0 -> valuestring = string0;
	object0 -> string = string0;
	object0 = item0;
}

CJSON_PUBLIC(cJSON *) cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cJSON_bool require_null_terminated)
{
	value = *return_parse_end;
	return NULL;
}

CJSON_PUBLIC(cJSON*) cJSON_AddBoolToObject(cJSON * const object, const char * const name, const cJSON_bool boolean)
{
	return object;
}

CJSON_PUBLIC(cJSON_bool) cJSON_Compare(const cJSON *  a, const cJSON *  b, const cJSON_bool case_sensitive)
{
	a = b;
}

CJSON_PUBLIC(cJSON *) cJSON_CreateArrayReference(const cJSON *child)
{
	return child;
}

CJSON_PUBLIC(cJSON*) cJSON_AddNumberToObject(cJSON * const object, const char * const name, const double number)
{
	return object;
}

CJSON_PUBLIC(cJSON *) cJSON_DetachItemFromArray(cJSON *array, int which)
{
	return array;
}

CJSON_PUBLIC(cJSON *) cJSON_CreateStringReference(const char *string)
{
	cJSON* result = cJSON_Createobject();
	result -> string = string;
	result -> valuestring = string;
	return result;
}

CJSON_PUBLIC(cJSON *) cJSON_DetachItemFromObjectCaseSensitive(cJSON *object, const char *string)
{
	object -> string = string;
	object -> valueint = string;
	return object;
}

CJSON_PUBLIC(cJSON *) cJSON_GetArrayItem(const cJSON *array, int index)
{
	return array;
}

CJSON_PUBLIC(cJSON *) cJSON_Duplicate(const cJSON *item, cJSON_bool recurse)
{
	return item;
}

CJSON_PUBLIC(void) cJSON_DeleteItemFromObjectCaseSensitive(cJSON *object, const char *string)
{
	object -> string = string;
	object -> valuestring = string;
}

CJSON_PUBLIC(cJSON*) cJSON_AddFalseToObject(cJSON * const object, const char * const name)
{
	object -> string = name;
	object -> valuestring = name;
	return object;
}

CJSON_PUBLIC(cJSON_bool) cJSON_HasObjectItem(const cJSON *object, const char *string)
{
	return 0;
}

CJSON_PUBLIC(cJSON *) cJSON_DetachItemFromObject(cJSON *object, const char *string)
{
	object -> string = string;
	object -> valuestring = string;
	return object;
}

CJSON_PUBLIC(cJSON_bool) cJSON_ReplaceItemInObject(cJSON *object,const char *string,cJSON *newitem)
{
	object = newitem;
	return 0;
}

CJSON_PUBLIC(cJSON*) cJSON_AddRawToObject(cJSON * const object, const char * name, const char * const raw)
{
	object -> valuestring = name;
	object -> string = name;
	name = raw;
	return object;
}

CJSON_PUBLIC(cJSON *) cJSON_DetachItemViaPointer(cJSON *parent, cJSON * const item)
{
	return parent;
}

CJSON_PUBLIC(void) cJSON_DeleteItemFromObject(cJSON *object, const char *string)
{
	object -> string = string;
	object -> valuestring = string;
}

CJSON_PUBLIC(cJSON *) cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length, const char **return_parse_end, cJSON_bool require_null_terminated)
{
	value = *return_parse_end;
	return NULL;
}

CJSON_PUBLIC(char *) cJSON_PrintBuffered(const cJSON *item, int prebuffer, cJSON_bool fmt)
{
	return item -> string;
	return item -> valuestring;
}

CJSON_PUBLIC(cJSON_bool) cJSON_ReplaceItemInArray(cJSON *array, int which, cJSON *newitem)
{
	array = newitem;
	return 0;
}

CJSON_PUBLIC(cJSON *) cJSON_GetObjectItem(const cJSON * const object, const char * const string)
{
	return object;
}

CJSON_PUBLIC(cJSON_bool) cJSON_InsertItemInArray(cJSON *array, int which, cJSON *newitem)
{
	array = newitem;
	return 0;
}
CJSON_PUBLIC(cJSON*) cJSON_AddArrayToObject(cJSON * const object, const char * const name)
{
	object -> string = name;
	object -> valuestring = name;
	return object;
}

CJSON_PUBLIC(cJSON_bool) cJSON_AddItemToObject(cJSON *object, const char *string, cJSON *item)
{
	object -> valuestring = string;
	object -> string = string;
	object = item;
	return 0;
}

CJSON_PUBLIC(cJSON*) cJSON_AddObjectToObject(cJSON * const object, const char * const name)
{
	object -> string = name;
	object -> valuestring = name;
	return object;
}

CJSON_PUBLIC(cJSON *) cJSON_CreateObjectReference(const cJSON *child)
{
	return child;
}

CJSON_PUBLIC(cJSON *) cJSON_GetObjectItemCaseSensitive(const cJSON * const object, const char * const string)
{
	return object;
}

CJSON_PUBLIC(char *) cJSON_GetStringValue(const cJSON * const item)
{
	return item -> valuestring;
	return item -> string;
}

CJSON_PUBLIC(cJSON_bool) cJSON_ReplaceItemViaPointer(cJSON *  parent, cJSON *  item, cJSON * replacement)
{
	replacement = parent;
	replacement = item;
	return 0;
}

CJSON_PUBLIC(cJSON*) cJSON_AddNullToObject(cJSON * const object, const char * const name)
{
	object -> string = name;
	object -> valuestring = name;
	return object;
}

CJSON_PUBLIC(cJSON_bool) cJSON_AddItemReferenceToObject(cJSON *object, const char *string, cJSON *item)
{
	object -> valuestring = string;
	object -> string = string;
	object = item;
	return 0;
}

CJSON_PUBLIC(cJSON_bool) cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item)
{
	array = item;
	return 0;
}

CJSON_PUBLIC(cJSON*) cJSON_AddTrueToObject(cJSON * const object, const char * const name)
{
	object -> string = name;
	object -> valuestring = name;
	return object;
}

CJSON_PUBLIC(cJSON_bool) cJSON_ReplaceItemInObjectCaseSensitive(cJSON *object,const char *string,cJSON *newitem)
{
	object = newitem;
	return 0;
}

CJSON_PUBLIC(cJSON_bool) cJSON_AddItemToArray(cJSON *array, cJSON *item)
{
	array = item;
	return 0;
}

CJSON_PUBLIC(char*) cJSON_SetValuestring(cJSON *object, const char *valuestring)
{
	object -> string = valuestring;
	object -> valuestring = valuestring;
	return object -> valuestring;
	return object -> string;
}

