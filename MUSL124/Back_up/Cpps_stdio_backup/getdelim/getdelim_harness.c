#include <stdio.h>
#include <string.h>

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

		char **arg0 = strtok(buf, "\n");
		unsigned long *arg1;
		sscanf(strtok(NULL, "\n"), "%lu", &arg1);

		int arg2;
		sscanf(strtok(NULL, "\n"), "%d", &arg2);

		FILE *fp; 
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt" , "r");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}


		ssize_t result = getdelim(arg0, arg1, arg2, fp);
		const char *funSignature = "ssize_t getdelim(char** arg1, size_t* arg0, int arg2, FILE* arg0)";
		
		if(arg3 != NULL && *arg0 == arg3 -> _IO_read_ptr)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_read_ptr;", "getdelim_0.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_read_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_read_end;", "getdelim_1.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_read_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_read_base;", "getdelim_2.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_write_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_write_base;", "getdelim_3.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_write_ptr)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_write_ptr;", "getdelim_4.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_write_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_write_end;", "getdelim_5.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_buf_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_buf_base;", "getdelim_6.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_buf_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_buf_end;", "getdelim_7.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_save_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_save_base;", "getdelim_8.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_backup_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_backup_base;", "getdelim_9.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _IO_save_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _IO_save_end;", "getdelim_10.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_read_ptr;", "getdelim_11.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_read_end;", "getdelim_12.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_read_base;", "getdelim_13.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_write_base;", "getdelim_14.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_write_ptr;", "getdelim_15.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_write_end;", "getdelim_16.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_buf_base;", "getdelim_17.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_buf_end;", "getdelim_18.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_save_base;", "getdelim_19.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_backup_base;", "getdelim_20.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _IO_save_end;", "getdelim_21.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _shortbuf;", "getdelim_22.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && *arg0 == arg3 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("*arg0 == arg3 -> _markers -> _sbuf -> _lock;", "getdelim_23.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_read_ptr;", "getdelim_24.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_read_end;", "getdelim_25.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_read_base;", "getdelim_26.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_write_base;", "getdelim_27.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_write_ptr;", "getdelim_28.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_write_end;", "getdelim_29.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_buf_base;", "getdelim_30.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_buf_end;", "getdelim_31.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_save_base;", "getdelim_32.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_backup_base;", "getdelim_33.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _IO_save_end;", "getdelim_34.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _shortbuf;", "getdelim_35.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && *arg0 == arg3 -> _chain -> _lock)
		{
			SpecFileGeneration("*arg0 == arg3 -> _chain -> _lock;", "getdelim_36.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _shortbuf)
		{
			SpecFileGeneration("*arg0 == arg3 -> _shortbuf;", "getdelim_37.cpp", funSignature);
		}
		if(arg3 != NULL && *arg0 == arg3 -> _lock)
		{
			SpecFileGeneration("*arg0 == arg3 -> _lock;", "getdelim_38.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _markers != NULL && arg3 -> _markers -> _sbuf != NULL && arg1 == arg3 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("arg1 == arg3 -> _markers -> _sbuf -> _lock;", "getdelim_39.cpp", funSignature);
		}
		if(arg3 != NULL && arg3 -> _chain != NULL && arg1 == arg3 -> _chain -> _lock)
		{
			SpecFileGeneration("arg1 == arg3 -> _chain -> _lock;", "getdelim_40.cpp", funSignature);
		}
		if(arg3 != NULL && arg1 == arg3 -> _lock)
		{
			SpecFileGeneration("arg1 == arg3 -> _lock;", "getdelim_41.cpp", funSignature);
		}
	}

	return 0;
}
