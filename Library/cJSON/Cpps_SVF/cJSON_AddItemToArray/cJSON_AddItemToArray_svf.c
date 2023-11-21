#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *array0 = cJSON_CreateObject();
	cJSON *item1 = cJSON_CreateObject();
	
	cJSON_bool result = cJSON_AddItemToArray(array0, item1);

	MAYALIAS(array0, item1);


	cJSON_Delete(array0);
	cJSON_Delete(item1);
	return 0;
}
