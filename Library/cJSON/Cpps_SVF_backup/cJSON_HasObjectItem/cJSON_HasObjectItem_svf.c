#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *object0 = cJSON_CreateObject();
	char *string1 = "abc";
	
	cJSON_bool result = cJSON_HasObjectItem(object0, string1);

	MAYALIAS(object0->string,string1);
	MAYALIAS(object0->valuestring,string1);


	cJSON_Delete(object0);
	return 0;
}
