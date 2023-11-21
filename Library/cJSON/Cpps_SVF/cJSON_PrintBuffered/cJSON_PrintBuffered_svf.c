#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *item0 = cJSON_CreateObject();
	int prebuffer1 = 123;
	int fmt2 = 123;
	
	char* result = cJSON_PrintBuffered(item0, prebuffer1, fmt2);

	MAYALIAS(result, item0->string);
	MAYALIAS(result, item0->valuestring);


	cJSON_Delete(item0);
	return 0;
}
