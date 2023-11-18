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

//	char buf[1024];
	while (__AFL_LOOP(1000)) 
	{
		memset(buf, 0, sizeof(buf));
		if (read(0, buf, sizeof(buf)) < 0) {
			return 1;
		}

		char *arg0 = strtok(buf, "\n");
		FILE *fp;
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt" , "w+");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}


		int result = fputs(arg0, fp);
		const char *funSignature = "int fputs(char* arg0, FILE* arg0)";
		
		if(arg1 != NULL && arg0 == arg1 -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_read_ptr;", "fputs_0.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_read_end;", "fputs_1.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_read_base;", "fputs_2.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_write_base;", "fputs_3.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_write_ptr;", "fputs_4.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_write_end;", "fputs_5.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_buf_base;", "fputs_6.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_buf_end;", "fputs_7.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_save_base;", "fputs_8.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_backup_base;", "fputs_9.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_save_end;", "fputs_10.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_read_ptr;", "fputs_11.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_read_end;", "fputs_12.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_read_base;", "fputs_13.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_write_base;", "fputs_14.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_write_ptr;", "fputs_15.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_write_end;", "fputs_16.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_buf_base;", "fputs_17.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_buf_end;", "fputs_18.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_save_base;", "fputs_19.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_backup_base;", "fputs_20.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_save_end;", "fputs_21.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _shortbuf;", "fputs_22.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _lock;", "fputs_23.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_read_ptr;", "fputs_24.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_read_end;", "fputs_25.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_read_base;", "fputs_26.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_write_base;", "fputs_27.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_write_ptr;", "fputs_28.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_write_end;", "fputs_29.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_buf_base;", "fputs_30.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_buf_end;", "fputs_31.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_save_base;", "fputs_32.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_backup_base;", "fputs_33.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_save_end;", "fputs_34.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _shortbuf;", "fputs_35.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _lock)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _lock;", "fputs_36.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg1 -> _shortbuf;", "fputs_37.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _lock)
		{
			SpecFileGeneration("arg0 == arg1 -> _lock;", "fputs_38.cpp", funSignature);
		}
	}

	return 0;
}
