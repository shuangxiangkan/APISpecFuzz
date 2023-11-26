JSON_Status json_object_dotset_value(JSON_Object* object, char* name, JSON_Value* value)
{
	*object -> values == value;
}
