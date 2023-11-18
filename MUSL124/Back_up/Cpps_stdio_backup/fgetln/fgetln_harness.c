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

		FILE *fp; 
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt" , "r");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}

	    unsigned long *arg1;
		sscanf(strtok(NULL, "\n"), "%lu", &arg1);

	
		char* result = fgetln(fp, arg1);
		const char *funSignature = "char* fgetln(FILE* arg0, size_t* arg0)";
		
		if(arg0 != NULL && result == arg0 -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg0 -> _IO_read_ptr;", "fgetln_0.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_read_end)
		{
			SpecFileGeneration("return arg0 -> _IO_read_end;", "fgetln_1.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_read_base)
		{
			SpecFileGeneration("return arg0 -> _IO_read_base;", "fgetln_2.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_write_base)
		{
			SpecFileGeneration("return arg0 -> _IO_write_base;", "fgetln_3.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg0 -> _IO_write_ptr;", "fgetln_4.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_write_end)
		{
			SpecFileGeneration("return arg0 -> _IO_write_end;", "fgetln_5.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_buf_base)
		{
			SpecFileGeneration("return arg0 -> _IO_buf_base;", "fgetln_6.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_buf_end)
		{
			SpecFileGeneration("return arg0 -> _IO_buf_end;", "fgetln_7.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_save_base)
		{
			SpecFileGeneration("return arg0 -> _IO_save_base;", "fgetln_8.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_backup_base)
		{
			SpecFileGeneration("return arg0 -> _IO_backup_base;", "fgetln_9.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _IO_save_end)
		{
			SpecFileGeneration("return arg0 -> _IO_save_end;", "fgetln_10.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_read_ptr;", "fgetln_11.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_read_end;", "fgetln_12.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_read_base;", "fgetln_13.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_write_base;", "fgetln_14.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_write_ptr;", "fgetln_15.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_write_end;", "fgetln_16.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_buf_base;", "fgetln_17.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_buf_end;", "fgetln_18.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_save_base;", "fgetln_19.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_backup_base;", "fgetln_20.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _IO_save_end;", "fgetln_21.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _shortbuf;", "fgetln_22.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && result == arg0 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("return arg0 -> _markers -> _sbuf -> _lock;", "fgetln_23.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_read_ptr;", "fgetln_24.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_read_end;", "fgetln_25.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_read_base;", "fgetln_26.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_write_base;", "fgetln_27.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_write_ptr;", "fgetln_28.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_write_end;", "fgetln_29.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_buf_base;", "fgetln_30.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_buf_end;", "fgetln_31.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_save_base;", "fgetln_32.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_backup_base;", "fgetln_33.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("return arg0 -> _chain -> _IO_save_end;", "fgetln_34.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("return arg0 -> _chain -> _shortbuf;", "fgetln_35.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && result == arg0 -> _chain -> _lock)
		{
			SpecFileGeneration("return arg0 -> _chain -> _lock;", "fgetln_36.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _shortbuf)
		{
			SpecFileGeneration("return arg0 -> _shortbuf;", "fgetln_37.cpp", funSignature);
		}
		if(arg0 != NULL && result == arg0 -> _lock)
		{
			SpecFileGeneration("return arg0 -> _lock;", "fgetln_38.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _lock == arg1;", "fgetln_39.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _lock == arg1;", "fgetln_40.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _lock == arg1;", "fgetln_41.cpp", funSignature);
		}
	}

	return 0;
}
