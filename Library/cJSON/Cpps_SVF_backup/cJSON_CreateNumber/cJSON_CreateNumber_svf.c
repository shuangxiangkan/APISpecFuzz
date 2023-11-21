#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	double num0 = "123.12";
	
	cJSON* result = cJSON_CreateNumber(num0);

	return 0;
}
