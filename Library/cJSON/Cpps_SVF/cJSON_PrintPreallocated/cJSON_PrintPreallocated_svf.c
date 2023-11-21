#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	cJSON *item0 = cJSON_CreateObject();
	char *buffer1 = "abc";
	int length2 = 123;
	int format3 = 123;
	
	cJSON_bool result = cJSON_PrintPreallocated(item0, buffer1, length2, format3);

	MAYALIAS(item0->valuestring, buffer1);
	MAYALIAS(item0->string, buffer1);


	cJSON_Delete(item0);
	return 0;
}
