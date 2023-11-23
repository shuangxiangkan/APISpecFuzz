#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *name1 = "abc";
	double number2 = 123.12;
	
	cJSON* result = cJSON_AddNumberToObject(object0, name1, number2);

	MAYALIAS(result, object0);


	cJSON_Delete(object0);
	return 0;
}
