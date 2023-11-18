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
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt/file.txt" , "r");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}

	char *arg1 = strtok(NULL, "\n");
	
		 setbuf(arg0, arg1);
		const char *funSignature = "void setbuf(FILE* arg0, char* arg0)";
		
		if(arg0 != NULL && arg0 -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_read_ptr == arg1;", "setbuf_0.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_read_end == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_read_end == arg1;", "setbuf_1.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_read_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_read_base == arg1;", "setbuf_2.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_write_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_write_base == arg1;", "setbuf_3.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_write_ptr == arg1;", "setbuf_4.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_write_end == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_write_end == arg1;", "setbuf_5.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_buf_base == arg1;", "setbuf_6.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_buf_end == arg1;", "setbuf_7.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_save_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_save_base == arg1;", "setbuf_8.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_backup_base == arg1;", "setbuf_9.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_save_end == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_save_end == arg1;", "setbuf_10.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_read_ptr == arg1;", "setbuf_11.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_read_end == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_read_end == arg1;", "setbuf_12.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_read_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_read_base == arg1;", "setbuf_13.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_write_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_write_base == arg1;", "setbuf_14.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_write_ptr == arg1;", "setbuf_15.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_write_end == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_write_end == arg1;", "setbuf_16.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_buf_base == arg1;", "setbuf_17.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_buf_end == arg1;", "setbuf_18.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_save_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_save_base == arg1;", "setbuf_19.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_backup_base == arg1;", "setbuf_20.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_save_end == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_save_end == arg1;", "setbuf_21.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _shortbuf == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _shortbuf == arg1;", "setbuf_22.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _lock == arg1;", "setbuf_23.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_read_ptr == arg1;", "setbuf_24.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_read_end == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_read_end == arg1;", "setbuf_25.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_read_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_read_base == arg1;", "setbuf_26.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_write_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_write_base == arg1;", "setbuf_27.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_write_ptr == arg1;", "setbuf_28.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_write_end == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_write_end == arg1;", "setbuf_29.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_buf_base == arg1;", "setbuf_30.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_buf_end == arg1;", "setbuf_31.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_save_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_save_base == arg1;", "setbuf_32.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_backup_base == arg1;", "setbuf_33.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_save_end == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_save_end == arg1;", "setbuf_34.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _shortbuf == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _shortbuf == arg1;", "setbuf_35.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _lock == arg1;", "setbuf_36.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _shortbuf == arg1)
		{
			SpecFileGeneration("arg0 -> _shortbuf == arg1;", "setbuf_37.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _lock == arg1;", "setbuf_38.cpp", funSignature);
		}
	}

	return 0;
}
