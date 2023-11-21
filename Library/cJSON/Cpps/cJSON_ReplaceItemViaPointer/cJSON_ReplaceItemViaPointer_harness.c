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
		cJSON *replacement2 = cJSON_Parse(strtok(NULL, "\n"));
	
		cJSON_bool result = cJSON_ReplaceItemViaPointer(parent0, item1, replacement2);
		const char *funSignature = "cJSON_bool cJSON_ReplaceItemViaPointer(cJSON* parent0, cJSON* item0, cJSON* replacement0)";
		
		if(parent0 == item1)
		{
			SpecFileGeneration("parent0 == item1;", "cJSON_ReplaceItemViaPointer_0.cpp", funSignature);
		}
		if(item1 != NULL && parent0 == item1 -> next)
		{
			SpecFileGeneration("parent0 == item1 -> next;", "cJSON_ReplaceItemViaPointer_1.cpp", funSignature);
		}
		if(item1 != NULL && parent0 == item1 -> prev)
		{
			SpecFileGeneration("parent0 == item1 -> prev;", "cJSON_ReplaceItemViaPointer_2.cpp", funSignature);
		}
		if(item1 != NULL && parent0 == item1 -> child)
		{
			SpecFileGeneration("parent0 == item1 -> child;", "cJSON_ReplaceItemViaPointer_3.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> next == item1)
		{
			SpecFileGeneration("parent0 -> next == item1;", "cJSON_ReplaceItemViaPointer_4.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> next == item1 -> next)
		{
			SpecFileGeneration("parent0 -> next == item1 -> next;", "cJSON_ReplaceItemViaPointer_5.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> next == item1 -> prev)
		{
			SpecFileGeneration("parent0 -> next == item1 -> prev;", "cJSON_ReplaceItemViaPointer_6.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> next == item1 -> child)
		{
			SpecFileGeneration("parent0 -> next == item1 -> child;", "cJSON_ReplaceItemViaPointer_7.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> prev == item1)
		{
			SpecFileGeneration("parent0 -> prev == item1;", "cJSON_ReplaceItemViaPointer_8.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> prev == item1 -> next)
		{
			SpecFileGeneration("parent0 -> prev == item1 -> next;", "cJSON_ReplaceItemViaPointer_9.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> prev == item1 -> prev)
		{
			SpecFileGeneration("parent0 -> prev == item1 -> prev;", "cJSON_ReplaceItemViaPointer_10.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> prev == item1 -> child)
		{
			SpecFileGeneration("parent0 -> prev == item1 -> child;", "cJSON_ReplaceItemViaPointer_11.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> child == item1)
		{
			SpecFileGeneration("parent0 -> child == item1;", "cJSON_ReplaceItemViaPointer_12.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> child == item1 -> next)
		{
			SpecFileGeneration("parent0 -> child == item1 -> next;", "cJSON_ReplaceItemViaPointer_13.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> child == item1 -> prev)
		{
			SpecFileGeneration("parent0 -> child == item1 -> prev;", "cJSON_ReplaceItemViaPointer_14.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> child == item1 -> child)
		{
			SpecFileGeneration("parent0 -> child == item1 -> child;", "cJSON_ReplaceItemViaPointer_15.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> valuestring == item1 -> valuestring)
		{
			SpecFileGeneration("parent0 -> valuestring == item1 -> valuestring;", "cJSON_ReplaceItemViaPointer_16.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> valuestring == item1 -> string)
		{
			SpecFileGeneration("parent0 -> valuestring == item1 -> string;", "cJSON_ReplaceItemViaPointer_17.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> string == item1 -> valuestring)
		{
			SpecFileGeneration("parent0 -> string == item1 -> valuestring;", "cJSON_ReplaceItemViaPointer_18.cpp", funSignature);
		}
		if(parent0 != NULL && item1 != NULL && parent0 != item1 && parent0 -> string == item1 -> string)
		{
			SpecFileGeneration("parent0 -> string == item1 -> string;", "cJSON_ReplaceItemViaPointer_19.cpp", funSignature);
		}
		if(parent0 == replacement2)
		{
			SpecFileGeneration("parent0 == replacement2;", "cJSON_ReplaceItemViaPointer_20.cpp", funSignature);
		}
		if(replacement2 != NULL && parent0 == replacement2 -> next)
		{
			SpecFileGeneration("parent0 == replacement2 -> next;", "cJSON_ReplaceItemViaPointer_21.cpp", funSignature);
		}
		if(replacement2 != NULL && parent0 == replacement2 -> prev)
		{
			SpecFileGeneration("parent0 == replacement2 -> prev;", "cJSON_ReplaceItemViaPointer_22.cpp", funSignature);
		}
		if(replacement2 != NULL && parent0 == replacement2 -> child)
		{
			SpecFileGeneration("parent0 == replacement2 -> child;", "cJSON_ReplaceItemViaPointer_23.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> next == replacement2)
		{
			SpecFileGeneration("parent0 -> next == replacement2;", "cJSON_ReplaceItemViaPointer_24.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> next == replacement2 -> next)
		{
			SpecFileGeneration("parent0 -> next == replacement2 -> next;", "cJSON_ReplaceItemViaPointer_25.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> next == replacement2 -> prev)
		{
			SpecFileGeneration("parent0 -> next == replacement2 -> prev;", "cJSON_ReplaceItemViaPointer_26.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> next == replacement2 -> child)
		{
			SpecFileGeneration("parent0 -> next == replacement2 -> child;", "cJSON_ReplaceItemViaPointer_27.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> prev == replacement2)
		{
			SpecFileGeneration("parent0 -> prev == replacement2;", "cJSON_ReplaceItemViaPointer_28.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> prev == replacement2 -> next)
		{
			SpecFileGeneration("parent0 -> prev == replacement2 -> next;", "cJSON_ReplaceItemViaPointer_29.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> prev == replacement2 -> prev)
		{
			SpecFileGeneration("parent0 -> prev == replacement2 -> prev;", "cJSON_ReplaceItemViaPointer_30.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> prev == replacement2 -> child)
		{
			SpecFileGeneration("parent0 -> prev == replacement2 -> child;", "cJSON_ReplaceItemViaPointer_31.cpp", funSignature);
		}
		if(parent0 != NULL && parent0 -> child == replacement2)
		{
			SpecFileGeneration("parent0 -> child == replacement2;", "cJSON_ReplaceItemViaPointer_32.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> child == replacement2 -> next)
		{
			SpecFileGeneration("parent0 -> child == replacement2 -> next;", "cJSON_ReplaceItemViaPointer_33.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> child == replacement2 -> prev)
		{
			SpecFileGeneration("parent0 -> child == replacement2 -> prev;", "cJSON_ReplaceItemViaPointer_34.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> child == replacement2 -> child)
		{
			SpecFileGeneration("parent0 -> child == replacement2 -> child;", "cJSON_ReplaceItemViaPointer_35.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> valuestring == replacement2 -> valuestring)
		{
			SpecFileGeneration("parent0 -> valuestring == replacement2 -> valuestring;", "cJSON_ReplaceItemViaPointer_36.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> valuestring == replacement2 -> string)
		{
			SpecFileGeneration("parent0 -> valuestring == replacement2 -> string;", "cJSON_ReplaceItemViaPointer_37.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> string == replacement2 -> valuestring)
		{
			SpecFileGeneration("parent0 -> string == replacement2 -> valuestring;", "cJSON_ReplaceItemViaPointer_38.cpp", funSignature);
		}
		if(parent0 != NULL && replacement2 != NULL && parent0 != replacement2 && parent0 -> string == replacement2 -> string)
		{
			SpecFileGeneration("parent0 -> string == replacement2 -> string;", "cJSON_ReplaceItemViaPointer_39.cpp", funSignature);
		}
		if(item1 == replacement2)
		{
			SpecFileGeneration("item1 == replacement2;", "cJSON_ReplaceItemViaPointer_40.cpp", funSignature);
		}
		if(replacement2 != NULL && item1 == replacement2 -> next)
		{
			SpecFileGeneration("item1 == replacement2 -> next;", "cJSON_ReplaceItemViaPointer_41.cpp", funSignature);
		}
		if(replacement2 != NULL && item1 == replacement2 -> prev)
		{
			SpecFileGeneration("item1 == replacement2 -> prev;", "cJSON_ReplaceItemViaPointer_42.cpp", funSignature);
		}
		if(replacement2 != NULL && item1 == replacement2 -> child)
		{
			SpecFileGeneration("item1 == replacement2 -> child;", "cJSON_ReplaceItemViaPointer_43.cpp", funSignature);
		}
		if(item1 != NULL && item1 -> next == replacement2)
		{
			SpecFileGeneration("item1 -> next == replacement2;", "cJSON_ReplaceItemViaPointer_44.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> next == replacement2 -> next)
		{
			SpecFileGeneration("item1 -> next == replacement2 -> next;", "cJSON_ReplaceItemViaPointer_45.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> next == replacement2 -> prev)
		{
			SpecFileGeneration("item1 -> next == replacement2 -> prev;", "cJSON_ReplaceItemViaPointer_46.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> next == replacement2 -> child)
		{
			SpecFileGeneration("item1 -> next == replacement2 -> child;", "cJSON_ReplaceItemViaPointer_47.cpp", funSignature);
		}
		if(item1 != NULL && item1 -> prev == replacement2)
		{
			SpecFileGeneration("item1 -> prev == replacement2;", "cJSON_ReplaceItemViaPointer_48.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> prev == replacement2 -> next)
		{
			SpecFileGeneration("item1 -> prev == replacement2 -> next;", "cJSON_ReplaceItemViaPointer_49.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> prev == replacement2 -> prev)
		{
			SpecFileGeneration("item1 -> prev == replacement2 -> prev;", "cJSON_ReplaceItemViaPointer_50.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> prev == replacement2 -> child)
		{
			SpecFileGeneration("item1 -> prev == replacement2 -> child;", "cJSON_ReplaceItemViaPointer_51.cpp", funSignature);
		}
		if(item1 != NULL && item1 -> child == replacement2)
		{
			SpecFileGeneration("item1 -> child == replacement2;", "cJSON_ReplaceItemViaPointer_52.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> child == replacement2 -> next)
		{
			SpecFileGeneration("item1 -> child == replacement2 -> next;", "cJSON_ReplaceItemViaPointer_53.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> child == replacement2 -> prev)
		{
			SpecFileGeneration("item1 -> child == replacement2 -> prev;", "cJSON_ReplaceItemViaPointer_54.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> child == replacement2 -> child)
		{
			SpecFileGeneration("item1 -> child == replacement2 -> child;", "cJSON_ReplaceItemViaPointer_55.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> valuestring == replacement2 -> valuestring)
		{
			SpecFileGeneration("item1 -> valuestring == replacement2 -> valuestring;", "cJSON_ReplaceItemViaPointer_56.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> valuestring == replacement2 -> string)
		{
			SpecFileGeneration("item1 -> valuestring == replacement2 -> string;", "cJSON_ReplaceItemViaPointer_57.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> string == replacement2 -> valuestring)
		{
			SpecFileGeneration("item1 -> string == replacement2 -> valuestring;", "cJSON_ReplaceItemViaPointer_58.cpp", funSignature);
		}
		if(item1 != NULL && replacement2 != NULL && item1 != replacement2 && item1 -> string == replacement2 -> string)
		{
			SpecFileGeneration("item1 -> string == replacement2 -> string;", "cJSON_ReplaceItemViaPointer_59.cpp", funSignature);
		}
		cJSON_Delete(parent0);
		cJSON_Delete(item1);
		cJSON_Delete(replacement2);
	}

	return 0;
}
