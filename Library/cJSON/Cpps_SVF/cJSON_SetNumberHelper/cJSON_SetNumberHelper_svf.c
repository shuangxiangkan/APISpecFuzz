#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	double number1 = 123.12;
	
	double result = cJSON_SetNumberHelper(object0, number1);


	cJSON_Delete(object0);
	return 0;
}
