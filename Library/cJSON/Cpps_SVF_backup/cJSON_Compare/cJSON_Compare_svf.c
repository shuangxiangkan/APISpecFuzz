#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *a0 = cJSON_CreateObject();
	cJSON *b1 = cJSON_CreateObject();
	int case_sensitive2 = 123;
	
	cJSON_bool result = cJSON_Compare(a0, b1, case_sensitive2);

	MAYALIAS(a0,b1);


	cJSON_Delete(a0);
	cJSON_Delete(b1);
	return 0;
}
