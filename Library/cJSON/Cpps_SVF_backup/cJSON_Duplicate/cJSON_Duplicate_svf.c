#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *item0 = cJSON_CreateObject();
	int recurse1 = 123;
	
	cJSON* result = cJSON_Duplicate(item0, recurse1);

	MAYALIAS(result, item0);


	cJSON_Delete(item0);
	return 0;
}
