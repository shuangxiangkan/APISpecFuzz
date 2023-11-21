#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *parent0 = cJSON_CreateObject();
	cJSON *item1 = cJSON_CreateObject();
	
	cJSON* result = cJSON_DetachItemViaPointer(parent0, item1);

	MAYALIAS(result, parent0);


	cJSON_Delete(parent0);
	cJSON_Delete(item1);
	return 0;
}
