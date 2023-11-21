#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *item0 = cJSON_CreateObject();
	
	char* result = cJSON_Print(item0);

	MAYALIAS(result, item0->string);
	MAYALIAS(result, item0->valuestring);


	cJSON_Delete(item0);
	return 0;
}
