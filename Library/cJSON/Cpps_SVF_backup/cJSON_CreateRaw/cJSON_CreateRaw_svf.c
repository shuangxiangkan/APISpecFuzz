#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	char *raw0 = "abc";
	
	cJSON* result = cJSON_CreateRaw(raw0);

	MAYALIAS(raw0,result->valuestring);
	MAYALIAS(raw0,result->string);


	return 0;
}
