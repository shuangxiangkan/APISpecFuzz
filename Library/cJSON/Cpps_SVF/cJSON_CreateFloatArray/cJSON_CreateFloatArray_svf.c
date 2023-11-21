#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	float *numbers0 = "123.12";
	int count1 = 123;
	
	cJSON* result = cJSON_CreateFloatArray(numbers0, count1);


	return 0;
}
