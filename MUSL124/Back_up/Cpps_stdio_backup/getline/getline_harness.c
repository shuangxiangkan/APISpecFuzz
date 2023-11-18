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

		FILE *fp; 
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt" , "r");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}


		ssize_t result = getline(arg0, arg1, fp);
		const char *funSignature = "ssize_t getline(char** arg1, size_t* arg0, FILE* arg0)";
		
		if(arg2 != NULL && *arg0 == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_read_ptr;", "getline_0.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_read_end;", "getline_1.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_read_base;", "getline_2.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_write_base;", "getline_3.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_write_ptr;", "getline_4.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_write_end;", "getline_5.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_buf_base;", "getline_6.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_buf_end;", "getline_7.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_save_base;", "getline_8.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_backup_base;", "getline_9.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _IO_save_end;", "getline_10.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "getline_11.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_read_end;", "getline_12.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_read_base;", "getline_13.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_write_base;", "getline_14.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "getline_15.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_write_end;", "getline_16.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "getline_17.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "getline_18.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_save_base;", "getline_19.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "getline_20.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _IO_save_end;", "getline_21.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _shortbuf;", "getline_22.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && *arg0 == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("*arg0 == arg2 -> _markers -> _sbuf -> _lock;", "getline_23.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_read_ptr;", "getline_24.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_read_end;", "getline_25.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_read_base;", "getline_26.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_write_base;", "getline_27.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_write_ptr;", "getline_28.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_write_end;", "getline_29.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_buf_base;", "getline_30.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_buf_end;", "getline_31.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_save_base;", "getline_32.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_backup_base;", "getline_33.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _IO_save_end;", "getline_34.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _shortbuf;", "getline_35.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && *arg0 == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("*arg0 == arg2 -> _chain -> _lock;", "getline_36.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _shortbuf)
		{
			SpecFileGeneration("*arg0 == arg2 -> _shortbuf;", "getline_37.cpp", funSignature);
		}
		if(arg2 != NULL && *arg0 == arg2 -> _lock)
		{
			SpecFileGeneration("*arg0 == arg2 -> _lock;", "getline_38.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _lock;", "getline_39.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _lock;", "getline_40.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _lock)
		{
			SpecFileGeneration("arg1 == arg2 -> _lock;", "getline_41.cpp", funSignature);
		}
	}

	return 0;
}
