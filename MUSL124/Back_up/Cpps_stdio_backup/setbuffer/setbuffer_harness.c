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
		unsigned long arg2;
		sscanf(strtok(NULL, "\n"), "%lu", &arg2);

	
		 setbuffer(arg0, arg1, arg2);
		const char *funSignature = "void setbuffer(FILE* arg0, char* arg0, size_t arg2)";
		
		if(arg0 != NULL && arg0 -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_read_ptr == arg1;", "setbuffer_0.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_read_end == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_read_end == arg1;", "setbuffer_1.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_read_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_read_base == arg1;", "setbuffer_2.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_write_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_write_base == arg1;", "setbuffer_3.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_write_ptr == arg1;", "setbuffer_4.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_write_end == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_write_end == arg1;", "setbuffer_5.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_buf_base == arg1;", "setbuffer_6.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_buf_end == arg1;", "setbuffer_7.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_save_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_save_base == arg1;", "setbuffer_8.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_backup_base == arg1;", "setbuffer_9.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _IO_save_end == arg1)
		{
			SpecFileGeneration("arg0 -> _IO_save_end == arg1;", "setbuffer_10.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_read_ptr == arg1;", "setbuffer_11.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_read_end == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_read_end == arg1;", "setbuffer_12.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_read_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_read_base == arg1;", "setbuffer_13.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_write_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_write_base == arg1;", "setbuffer_14.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_write_ptr == arg1;", "setbuffer_15.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_write_end == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_write_end == arg1;", "setbuffer_16.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_buf_base == arg1;", "setbuffer_17.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_buf_end == arg1;", "setbuffer_18.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_save_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_save_base == arg1;", "setbuffer_19.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_backup_base == arg1;", "setbuffer_20.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _IO_save_end == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _IO_save_end == arg1;", "setbuffer_21.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _shortbuf == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _shortbuf == arg1;", "setbuffer_22.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _markers != NULL && arg0 -> _markers -> _sbuf != NULL && arg0 -> _markers -> _sbuf -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _markers -> _sbuf -> _lock == arg1;", "setbuffer_23.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_read_ptr == arg1;", "setbuffer_24.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_read_end == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_read_end == arg1;", "setbuffer_25.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_read_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_read_base == arg1;", "setbuffer_26.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_write_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_write_base == arg1;", "setbuffer_27.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_write_ptr == arg1;", "setbuffer_28.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_write_end == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_write_end == arg1;", "setbuffer_29.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_buf_base == arg1;", "setbuffer_30.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_buf_end == arg1;", "setbuffer_31.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_save_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_save_base == arg1;", "setbuffer_32.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_backup_base == arg1;", "setbuffer_33.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _IO_save_end == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _IO_save_end == arg1;", "setbuffer_34.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _shortbuf == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _shortbuf == arg1;", "setbuffer_35.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _chain != NULL && arg0 -> _chain -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _chain -> _lock == arg1;", "setbuffer_36.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _shortbuf == arg1)
		{
			SpecFileGeneration("arg0 -> _shortbuf == arg1;", "setbuffer_37.cpp", funSignature);
		}
		if(arg0 != NULL && arg0 -> _lock == arg1)
		{
			SpecFileGeneration("arg0 -> _lock == arg1;", "setbuffer_38.cpp", funSignature);
		}
	}

	return 0;
}
