#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *array0 = cJSON_CreateObject();
	
	int result = cJSON_GetArraySize(array0);


	cJSON_Delete(array0);
	return 0;
}
