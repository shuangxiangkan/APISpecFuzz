#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *item0 = cJSON_CreateObject();
	
	double result = cJSON_GetNumberValue(item0);

	cJSON_Delete(item0);
	return 0;
}
