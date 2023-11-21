#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	char *string0 = "abc";
	
	cJSON* result = cJSON_CreateStringReference(string0);

	MAYALIAS(string0,result->valuestring);
	MAYALIAS(string0,result->string);


	return 0;
}
