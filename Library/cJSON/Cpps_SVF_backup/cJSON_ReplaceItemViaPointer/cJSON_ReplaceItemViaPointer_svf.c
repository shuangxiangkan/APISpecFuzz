#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *parent0 = cJSON_CreateObject();
	cJSON *item1 = cJSON_CreateObject();
	cJSON *replacement2 = cJSON_CreateObject();
	
	cJSON_bool result = cJSON_ReplaceItemViaPointer(parent0, item1, replacement2);

	MAYALIAS(parent0, replacement2);
	MAYALIAS(item1, replacement2);
	MAYALIAS(parent0, item1);



	cJSON_Delete(parent0);
	cJSON_Delete(item1);
	cJSON_Delete(replacement2);
	return 0;
}
