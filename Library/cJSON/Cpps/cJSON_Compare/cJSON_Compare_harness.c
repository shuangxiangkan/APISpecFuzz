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

		cJSON *a0 = cJSON_Parse(strtok(buf, "\n"));
		cJSON *b1 = cJSON_Parse(strtok(NULL, "\n"));
		int case_sensitive2;
		sscanf(strtok(NULL, "\n"), "%d", &case_sensitive2);

	
		cJSON_bool result = cJSON_Compare(a0, b1, case_sensitive2);
		const char *funSignature = "cJSON_bool cJSON_Compare(cJSON* a0, cJSON* b0, cJSON_bool case_sensitive2)";
		
		if(a0 == b1)
		{
			SpecFileGeneration("a0 == b1;", "cJSON_Compare_0.cpp", funSignature);
		}
		if(b1 != NULL && a0 == b1 -> next)
		{
			SpecFileGeneration("a0 == b1 -> next;", "cJSON_Compare_1.cpp", funSignature);
		}
		if(b1 != NULL && a0 == b1 -> prev)
		{
			SpecFileGeneration("a0 == b1 -> prev;", "cJSON_Compare_2.cpp", funSignature);
		}
		if(b1 != NULL && a0 == b1 -> child)
		{
			SpecFileGeneration("a0 == b1 -> child;", "cJSON_Compare_3.cpp", funSignature);
		}
		if(a0 != NULL && a0 -> next == b1)
		{
			SpecFileGeneration("a0 -> next == b1;", "cJSON_Compare_4.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> next == b1 -> next)
		{
			SpecFileGeneration("a0 -> next == b1 -> next;", "cJSON_Compare_5.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> next == b1 -> prev)
		{
			SpecFileGeneration("a0 -> next == b1 -> prev;", "cJSON_Compare_6.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> next == b1 -> child)
		{
			SpecFileGeneration("a0 -> next == b1 -> child;", "cJSON_Compare_7.cpp", funSignature);
		}
		if(a0 != NULL && a0 -> prev == b1)
		{
			SpecFileGeneration("a0 -> prev == b1;", "cJSON_Compare_8.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> prev == b1 -> next)
		{
			SpecFileGeneration("a0 -> prev == b1 -> next;", "cJSON_Compare_9.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> prev == b1 -> prev)
		{
			SpecFileGeneration("a0 -> prev == b1 -> prev;", "cJSON_Compare_10.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> prev == b1 -> child)
		{
			SpecFileGeneration("a0 -> prev == b1 -> child;", "cJSON_Compare_11.cpp", funSignature);
		}
		if(a0 != NULL && a0 -> child == b1)
		{
			SpecFileGeneration("a0 -> child == b1;", "cJSON_Compare_12.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> child == b1 -> next)
		{
			SpecFileGeneration("a0 -> child == b1 -> next;", "cJSON_Compare_13.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> child == b1 -> prev)
		{
			SpecFileGeneration("a0 -> child == b1 -> prev;", "cJSON_Compare_14.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> child == b1 -> child)
		{
			SpecFileGeneration("a0 -> child == b1 -> child;", "cJSON_Compare_15.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> valuestring == b1 -> valuestring)
		{
			SpecFileGeneration("a0 -> valuestring == b1 -> valuestring;", "cJSON_Compare_16.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> valuestring == b1 -> string)
		{
			SpecFileGeneration("a0 -> valuestring == b1 -> string;", "cJSON_Compare_17.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> string == b1 -> valuestring)
		{
			SpecFileGeneration("a0 -> string == b1 -> valuestring;", "cJSON_Compare_18.cpp", funSignature);
		}
		if(a0 != NULL && b1 != NULL && a0 != b1 && a0 -> string == b1 -> string)
		{
			SpecFileGeneration("a0 -> string == b1 -> string;", "cJSON_Compare_19.cpp", funSignature);
		}
		cJSON_Delete(a0);
		cJSON_Delete(b1);
	}

	return 0;
}
