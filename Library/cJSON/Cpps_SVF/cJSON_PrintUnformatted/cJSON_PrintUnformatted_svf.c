#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *item0 = cJSON_CreateObject();
	
	char* result = cJSON_PrintUnformatted(item0);

	MAYALIAS(result, item0->valuestring);
	MAYALIAS(result, item0->string);


	cJSON_Delete(item0);
	return 0;
}
