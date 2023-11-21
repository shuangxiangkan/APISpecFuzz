#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *string1 = "abc";
	
	cJSON* result = cJSON_DetachItemFromObjectCaseSensitive(object0, string1);

	MAYALIAS(result, object0);


	cJSON_Delete(object0);
	return 0;
}
