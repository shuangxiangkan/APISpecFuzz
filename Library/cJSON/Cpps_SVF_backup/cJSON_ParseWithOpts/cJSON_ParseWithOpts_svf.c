#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	char *value0 = "abc";
	char **return_parse_end1 = "abc";
	int require_null_terminated2 = 123;
	
	cJSON* result = cJSON_ParseWithOpts(value0, return_parse_end1, require_null_terminated2);

	MAYALIAS(result->valuestring, value0);
	MAYALIAS(result->string, value0);


	return 0;
}
