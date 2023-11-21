#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	char *value0 = "abc";
	unsigned long buffer_length1 = 123;
	
	cJSON* result = cJSON_ParseWithLength(value0, buffer_length1);

	MAYALIAS(result->valuestring, value0);
	MAYALIAS(result->string, value0);


	return 0;
}
