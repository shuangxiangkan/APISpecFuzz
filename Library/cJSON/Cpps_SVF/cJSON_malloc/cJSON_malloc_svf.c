#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	unsigned long size0 = 123;
	
	void* result = cJSON_malloc(size0);


	return 0;
}
