#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *valuestring1 = "abc";
	
	char* result = cJSON_SetValuestring(object0, valuestring1);

	MAYALIAS(result, valuestring1);
	MAYALIAS(result, object0->valuestring);
	MAYALIAS(result, object0->string);


	cJSON_Delete(object0);
	return 0;
}
