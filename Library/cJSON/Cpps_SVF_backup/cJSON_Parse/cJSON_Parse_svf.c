#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	char *value0 = "abc";
	
	cJSON* result = cJSON_Parse(value0);

	MAYALIAS(result->valuestring, value0);
	MAYALIAS(result->string, value0);


	return 0;
}
