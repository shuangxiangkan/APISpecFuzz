#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	char *value0 = "abc";
	unsigned long buffer_length1 = 123;
	char **return_parse_end2 = "abc";
	int require_null_terminated3 = 123;
	
	cJSON* result = cJSON_ParseWithLengthOpts(value0, buffer_length1, return_parse_end2, require_null_terminated3);

	MAYALIAS(result->valuestring, value0);
	MAYALIAS(result->string, value0);

	return 0;
}
