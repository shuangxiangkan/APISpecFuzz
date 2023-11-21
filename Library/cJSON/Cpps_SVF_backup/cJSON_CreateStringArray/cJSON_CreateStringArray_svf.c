#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	char **strings0 = "abc";
	int count1 = 123;
	
	cJSON* result = cJSON_CreateStringArray(strings0, count1);

	MAYALIAS(strings0, result->valuestring);
	MAYALIAS(strings0, result->string);


	return 0;
}
