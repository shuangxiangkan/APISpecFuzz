#include "cJSON.h"
#include <string.h>
#include <stdio.h>

void SpecFileGeneration(const char *specification, const char *fileName, const char *funSignature)
{
	FILE *file = fopen(fileName, "r");
	if (file) {
		fclose(file);
		return;
	}

	file = fopen(fileName, "a");
	if (file) {
		fprintf(file, "%s\n", funSignature);
		fprintf(file, "{\n");
		fprintf(file, "	%s\n", specification);
		fprintf(file, "}\n");
		fclose(file);
	}
}

int main() {

	char buf[1024];
	while (__AFL_LOOP(1000)) 
	{
		memset(buf, 0, sizeof(buf));
		if (read(0, buf, sizeof(buf)) < 0) {
			return 1;
		}

		cJSON *parent0 = cJSON_Parse(strtok(buf, "\n"));
		cJSON *item1 = cJSON_Parse(strtok(NULL, "\n"));
	
		cJSON* result = cJSON_DetachItemViaPointer(parent0, item1);
		const char *funSignature = "cJSON* cJSON_DetachItemViaPointer(cJSON* parent0, cJSON* item0)";
		
		if(result == parent0)
		{
			SpecFileGeneration("return parent0;", "cJSON_DetachItemViaPointer_0.cpp", funSignature);
		}
		if(parent0 != NULL && result == parent0 -> next)
		{
			SpecFileGeneration("return parent0 -> next;", "cJSON_DetachItemViaPointer_1.cpp", funSignature);
		}
		if(parent0 != NULL && result == parent0 -> prev)
		{
			SpecFileGeneration("return parent0 -> prev;", "cJSON_DetachItemViaPointer_2.cpp", funSignature);
		}
		if(parent0 != NULL && result == parent0 -> child)
		{
			SpecFileGeneration("return parent0 -> child;", "cJSON_DetachItemViaPointer_3.cpp", funSignature);
		}
		if(result != NULL && result -> next == parent0)
		{
			SpecFileGeneration("result -> next == parent0;", "cJSON_DetachItemViaPointer_4.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> next == parent0 -> next)
		{
			SpecFileGeneration("result -> next == parent0 -> next;", "cJSON_DetachItemViaPointer_5.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> next == parent0 -> prev)
		{
			SpecFileGeneration("result -> next == parent0 -> prev;", "cJSON_DetachItemViaPointer_6.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> next == parent0 -> child)
		{
			SpecFileGeneration("result -> next == parent0 -> child;", "cJSON_DetachItemViaPointer_7.cpp", funSignature);
		}
		if(result != NULL && result -> prev == parent0)
		{
			SpecFileGeneration("result -> prev == parent0;", "cJSON_DetachItemViaPointer_8.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> prev == parent0 -> next)
		{
			SpecFileGeneration("result -> prev == parent0 -> next;", "cJSON_DetachItemViaPointer_9.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> prev == parent0 -> prev)
		{
			SpecFileGeneration("result -> prev == parent0 -> prev;", "cJSON_DetachItemViaPointer_10.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> prev == parent0 -> child)
		{
			SpecFileGeneration("result -> prev == parent0 -> child;", "cJSON_DetachItemViaPointer_11.cpp", funSignature);
		}
		if(result != NULL && result -> child == parent0)
		{
			SpecFileGeneration("result -> child == parent0;", "cJSON_DetachItemViaPointer_12.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> child == parent0 -> next)
		{
			SpecFileGeneration("result -> child == parent0 -> next;", "cJSON_DetachItemViaPointer_13.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> child == parent0 -> prev)
		{
			SpecFileGeneration("result -> child == parent0 -> prev;", "cJSON_DetachItemViaPointer_14.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> child == parent0 -> child)
		{
			SpecFileGeneration("result -> child == parent0 -> child;", "cJSON_DetachItemViaPointer_15.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> valuestring == parent0 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == parent0 -> valuestring;", "cJSON_DetachItemViaPointer_16.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> valuestring == parent0 -> string)
		{
			SpecFileGeneration("result -> valuestring == parent0 -> string;", "cJSON_DetachItemViaPointer_17.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> string == parent0 -> valuestring)
		{
			SpecFileGeneration("result -> string == parent0 -> valuestring;", "cJSON_DetachItemViaPointer_18.cpp", funSignature);
		}
		if(result != NULL && parent0 != NULL && result != parent0 && result -> string == parent0 -> string)
		{
			SpecFileGeneration("result -> string == parent0 -> string;", "cJSON_DetachItemViaPointer_19.cpp", funSignature);
		}
		if(result == item1)
		{
			SpecFileGeneration("return item1;", "cJSON_DetachItemViaPointer_20.cpp", funSignature);
		}
		if(item1 != NULL && result == item1 -> next)
		{
			SpecFileGeneration("return item1 -> next;", "cJSON_DetachItemViaPointer_21.cpp", funSignature);
		}
		if(item1 != NULL && result == item1 -> prev)
		{
			SpecFileGeneration("return item1 -> prev;", "cJSON_DetachItemViaPointer_22.cpp", funSignature);
		}
		if(item1 != NULL && result == item1 -> child)
		{
			SpecFileGeneration("return item1 -> child;", "cJSON_DetachItemViaPointer_23.cpp", funSignature);
		}
		if(result != NULL && result -> next == item1)
		{
			SpecFileGeneration("result -> next == item1;", "cJSON_DetachItemViaPointer_24.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> next == item1 -> next)
		{
			SpecFileGeneration("result -> next == item1 -> next;", "cJSON_DetachItemViaPointer_25.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> next == item1 -> prev)
		{
			SpecFileGeneration("result -> next == item1 -> prev;", "cJSON_DetachItemViaPointer_26.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> next == item1 -> child)
		{
			SpecFileGeneration("result -> next == item1 -> child;", "cJSON_DetachItemViaPointer_27.cpp", funSignature);
		}
		if(result != NULL && result -> prev == item1)
		{
			SpecFileGeneration("result -> prev == item1;", "cJSON_DetachItemViaPointer_28.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> prev == item1 -> next)
		{
			SpecFileGeneration("result -> prev == item1 -> next;", "cJSON_DetachItemViaPointer_29.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> prev == item1 -> prev)
		{
			SpecFileGeneration("result -> prev == item1 -> prev;", "cJSON_DetachItemViaPointer_30.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> prev == item1 -> child)
		{
			SpecFileGeneration("result -> prev == item1 -> child;", "cJSON_DetachItemViaPointer_31.cpp", funSignature);
		}
		if(result != NULL && result -> child == item1)
		{
			SpecFileGeneration("result -> child == item1;", "cJSON_DetachItemViaPointer_32.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> child == item1 -> next)
		{
			SpecFileGeneration("result -> child == item1 -> next;", "cJSON_DetachItemViaPointer_33.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> child == item1 -> prev)
		{
			SpecFileGeneration("result -> child == item1 -> prev;", "cJSON_DetachItemViaPointer_34.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> child == item1 -> child)
		{
			SpecFileGeneration("result -> child == item1 -> child;", "cJSON_DetachItemViaPointer_35.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> valuestring == item1 -> valuestring)
		{
			SpecFileGeneration("result -> valuestring == item1 -> valuestring;", "cJSON_DetachItemViaPointer_36.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> valuestring == item1 -> string)
		{
			SpecFileGeneration("result -> valuestring == item1 -> string;", "cJSON_DetachItemViaPointer_37.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> string == item1 -> valuestring)
		{
			SpecFileGeneration("result -> string == item1 -> valuestring;", "cJSON_DetachItemViaPointer_38.cpp", funSignature);
		}
		if(result != NULL && item1 != NULL && result != item1 && result -> string == item1 -> string)
		{
			SpecFileGeneration("result -> string == item1 -> string;", "cJSON_DetachItemViaPointer_39.cpp", funSignature);
		}
		if(parent0 == item1)
		{
			SpecFileGeneration("parent0 == item1;", "cJSON_DetachItemViaPointer_40.cpp", funSignature);
		}
		if(item1 != NULL && parent0 == item1 -> next)
		{
			SpecFileGeneration("parent0 == item1 -> next;", "cJSON_DetachItemViaPointer_41.cpp", funSignature);
		}
		if(item1 != NULL && parent0 == item1 -> prev)
		{
			SpecFileGeneration("parent0 == item1 -> prev;", "cJSON_DetachItemViaPointer_42.cpp", funSignature);
		}
		if(item1 != NULL && parent0 == item1 -> child)
		{
			SpecFileGeneration("parent0 == item1 -> child;", "cJSON_DetachItemViaPointer_43.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> next == item1)
		{
			SpecFileGeneration("parent0 -> next == item1;", "cJSON_DetachItemViaPointer_44.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> next == item1 -> next)
		{
			SpecFileGeneration("parent0 -> next == item1 -> next;", "cJSON_DetachItemViaPointer_45.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> next == item1 -> prev)
		{
			SpecFileGeneration("parent0 -> next == item1 -> prev;", "cJSON_DetachItemViaPointer_46.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> next == item1 -> child)
		{
			SpecFileGeneration("parent0 -> next == item1 -> child;", "cJSON_DetachItemViaPointer_47.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> prev == item1)
		{
			SpecFileGeneration("parent0 -> prev == item1;", "cJSON_DetachItemViaPointer_48.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> prev == item1 -> next)
		{
			SpecFileGeneration("parent0 -> prev == item1 -> next;", "cJSON_DetachItemViaPointer_49.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> prev == item1 -> prev)
		{
			SpecFileGeneration("parent0 -> prev == item1 -> prev;", "cJSON_DetachItemViaPointer_50.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> prev == item1 -> child)
		{
			SpecFileGeneration("parent0 -> prev == item1 -> child;", "cJSON_DetachItemViaPointer_51.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> child == item1)
		{
			SpecFileGeneration("parent0 -> child == item1;", "cJSON_DetachItemViaPointer_52.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> child == item1 -> next)
		{
			SpecFileGeneration("parent0 -> child == item1 -> next;", "cJSON_DetachItemViaPointer_53.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> child == item1 -> prev)
		{
			SpecFileGeneration("parent0 -> child == item1 -> prev;", "cJSON_DetachItemViaPointer_54.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> child == item1 -> child)
		{
			SpecFileGeneration("parent0 -> child == item1 -> child;", "cJSON_DetachItemViaPointer_55.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> valuestring == item1 -> valuestring)
		{
			SpecFileGeneration("parent0 -> valuestring == item1 -> valuestring;", "cJSON_DetachItemViaPointer_56.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> valuestring == item1 -> string)
		{
			SpecFileGeneration("parent0 -> valuestring == item1 -> string;", "cJSON_DetachItemViaPointer_57.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> string == item1 -> valuestring)
		{
			SpecFileGeneration("parent0 -> string == item1 -> valuestring;", "cJSON_DetachItemViaPointer_58.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> string == item1 -> string)
		{
			SpecFileGeneration("parent0 -> string == item1 -> string;", "cJSON_DetachItemViaPointer_59.cpp", funSignature);
		}
		cJSON_Delete(parent0);
		cJSON_Delete(item1);
	}

	return 0;
}
