#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	int *numbers0 = 123;
	int count1 = 123;
	
	cJSON* result = cJSON_CreateIntArray(numbers0, count1);


	return 0;
}
