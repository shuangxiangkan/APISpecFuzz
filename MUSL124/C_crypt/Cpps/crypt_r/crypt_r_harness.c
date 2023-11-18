#include <crypt.h>
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

		char *arg0 = strtok(buf, "\n");
		char *arg1 = strtok(NULL, "\n");

		struct crypt_data data;
        data.initialized = 0;
	
		char* result = crypt_r(arg0, arg1, &data);
		const char *funSignature = "char *crypt_r(const char *, const char *, struct crypt_data *)";
		
		if(result == arg0)
		{
			SpecFileGeneration("return arg0;", "crypt_r_0.cpp", funSignature);
		}
		if(result == arg1)
		{
			SpecFileGeneration("return arg1;", "crypt_r_1.cpp", funSignature);
		}
		if(arg0 == arg1)
		{
			SpecFileGeneration("arg0 == arg1;", "crypt_r_2.cpp", funSignature);
		}
		if(data.input== result)
      {
         SpecFileGeneration("return data->input;", "crypt_r_3.cpp", funSignature);
      }
      if(data.input == arg0)
      {
         SpecFileGeneration("arg0 = data->input;", "crypt_r_4.cpp", funSignature);
      }
      if(data.input == arg1)
      {
         SpecFileGeneration("arg1 = data->input;", "crypt_r_5.cpp", funSignature);
      }

      if(data.internal== result)
      {
         SpecFileGeneration("return data->internal;", "crypt_r_6.cpp", funSignature);
      }
      if(data.internal == arg0)
      {
         SpecFileGeneration("arg0 = data->internal;", "crypt_r_7.cpp", funSignature);
      }
      if(data.internal == arg1)
      {
         SpecFileGeneration("arg1 = data->internal;", "crypt_r_8.cpp", funSignature);
      }

      if(data.output== result)
      {
         SpecFileGeneration("return data->output;", "crypt_r_9.cpp", funSignature);
      }
      if(data.output == arg0)
      {
         SpecFileGeneration("arg0 = data->output;", "crypt_r_10.cpp", funSignature);
      }
      if(data.output == arg1)
      {
         SpecFileGeneration("arg1 = data->output;", "crypt_r_11.cpp", funSignature);
      }

      if(data.reserved== result)
      {
         SpecFileGeneration("return data->reserved;", "crypt_r_12.cpp", funSignature);
      }
      if(data.reserved == arg0)
      {
         SpecFileGeneration("arg0 = data->reserved;", "crypt_r_13.cpp", funSignature);
      }
      if(data.reserved == arg1)
      {
         SpecFileGeneration("arg1 = data->reserved;", "crypt_r_14.cpp", funSignature);
      }

      if(data.setting== result)
      {
         SpecFileGeneration("return data->setting;", "crypt_r_15.cpp", funSignature);
      }
      if(data.setting == arg0)
      {
         SpecFileGeneration("arg0 = data->setting;", "crypt_r_16.cpp", funSignature);
      }
      if(data.setting == arg1)
      {
         SpecFileGeneration("arg1 = data->setting;", "crypt_r_17.cpp", funSignature);
      }
	}

	return 0;
}
