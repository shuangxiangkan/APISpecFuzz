#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *string1 = "abc";
	cJSON *newitem2 = cJSON_CreateObject();
	
	cJSON_bool result = cJSON_ReplaceItemInObject(object0, string1, newitem2);

	MAYALIAS(object0, newitem2);


	cJSON_Delete(object0);
	cJSON_Delete(newitem2);
	return 0;
}
