#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *item0 = cJSON_CreateObject();
	
	cJSON_bool result = cJSON_IsObject(item0);

	cJSON_Delete(item0);
	return 0;
}
