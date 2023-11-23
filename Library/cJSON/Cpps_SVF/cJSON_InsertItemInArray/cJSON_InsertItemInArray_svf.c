#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *array0 = cJSON_CreateObject();
	int which1 = 123;
	cJSON *newitem2 = cJSON_CreateObject();
	
	cJSON_bool result = cJSON_InsertItemInArray(array0, which1, newitem2);

	MAYALIAS(array0,newitem2);


	cJSON_Delete(array0);
	cJSON_Delete(newitem2);
	return 0;
}
