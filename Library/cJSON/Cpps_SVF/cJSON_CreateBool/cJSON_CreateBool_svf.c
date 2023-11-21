#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	int boolean0 = 123;
	
	cJSON* result = cJSON_CreateBool(boolean0);


	return 0;
}
