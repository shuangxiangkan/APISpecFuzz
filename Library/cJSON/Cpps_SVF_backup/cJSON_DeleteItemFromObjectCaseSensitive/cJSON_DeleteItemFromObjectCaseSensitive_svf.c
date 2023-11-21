#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *string1 = "abc";
	
	cJSON_DeleteItemFromObjectCaseSensitive(object0, string1);

	cJSON_Delete(object0);
	return 0;
}
