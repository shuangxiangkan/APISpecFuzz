#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *array0 = cJSON_CreateObject();
	int which1 = 123;
	
	cJSON* result = cJSON_DetachItemFromArray(array0, which1);


	cJSON_Delete(array0);
	return 0;
}
