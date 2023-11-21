#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *child0 = cJSON_CreateObject();
	
	cJSON* result = cJSON_CreateArrayReference(child0);

	MAYALIAS(result, child0);


	cJSON_Delete(child0);
	return 0;
}
