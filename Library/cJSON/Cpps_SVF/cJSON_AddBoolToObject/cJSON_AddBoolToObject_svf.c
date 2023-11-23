#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *name1 = "abc";
	int boolean2 = 123;
	
	cJSON* result = cJSON_AddBoolToObject(object0, name1, boolean2);
	MAYALIAS(result, object0);

	cJSON_Delete(object0);
	return 0;
}
