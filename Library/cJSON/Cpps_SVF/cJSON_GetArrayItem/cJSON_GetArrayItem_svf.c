#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *array0 = cJSON_CreateObject();
	int index1 = 123;
	
	cJSON* result = cJSON_GetArrayItem(array0, index1);

	MAYALIAS(result, array0);


	cJSON_Delete(array0);
	return 0;
}
