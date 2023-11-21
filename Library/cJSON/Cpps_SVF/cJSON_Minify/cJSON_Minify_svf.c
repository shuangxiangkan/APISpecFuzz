#include "cJSON.h"
#include <string.h>
#include <stdio.h>

extern void MAYALIAS(void*,void*);

int main() {

	char *json0 = "abc";
	
	 cJSON_Minify(json0);


	return 0;
}
