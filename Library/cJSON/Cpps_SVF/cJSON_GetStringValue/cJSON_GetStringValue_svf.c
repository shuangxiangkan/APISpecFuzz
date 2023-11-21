#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *item0 = cJSON_CreateObject();
	
	char* result = cJSON_GetStringValue(item0);

	MAYALIAS(item0->valuestring,result);
	MAYALIAS(item0->string,result);


	cJSON_Delete(item0);
	return 0;
}
