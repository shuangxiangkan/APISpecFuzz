#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *name1 = "abc";
	
	cJSON* result = cJSON_AddObjectToObject(object0, name1);

	MAYALIAS(object0, result);
    MAYALIAS(object0->string, name1);
    MAYALIAS(object0->valuestring, name1);


	cJSON_Delete(object0);
	return 0;
}
