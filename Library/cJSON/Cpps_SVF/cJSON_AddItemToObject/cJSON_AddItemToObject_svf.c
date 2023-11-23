#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *string1 = "abc";
	cJSON *item2 = cJSON_CreateObject();
	
	cJSON_bool result = cJSON_AddItemToObject(object0, string1, item2);

	MAYALIAS(object0, item2);
    MAYALIAS(object0->string, string1);
    MAYALIAS(object0->valuestring, string1);


	cJSON_Delete(object0);
	cJSON_Delete(item2);
	return 0;
}
