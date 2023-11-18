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

		int arg0;
		sscanf(strtok(NULL, "\n"), "%d", &arg0);

//		char *arg1 = strtok(NULL, "\n");

		FILE *fp;
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt" , "r");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}
	
		FILE* result = fdopen(fp, arg0);
		const char *funSignature = "FILE* fdopen(int arg0, char* arg0)";
		
		if(result != NULL && result -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg1;", "fdopen_0.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _IO_read_end == arg1;", "fdopen_1.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _IO_read_base == arg1;", "fdopen_2.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _IO_write_base == arg1;", "fdopen_3.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg1;", "fdopen_4.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _IO_write_end == arg1;", "fdopen_5.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg1;", "fdopen_6.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg1;", "fdopen_7.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _IO_save_base == arg1;", "fdopen_8.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg1;", "fdopen_9.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _IO_save_end == arg1;", "fdopen_10.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg1;", "fdopen_11.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg1;", "fdopen_12.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg1;", "fdopen_13.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg1;", "fdopen_14.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg1;", "fdopen_15.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg1;", "fdopen_16.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg1;", "fdopen_17.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg1;", "fdopen_18.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg1;", "fdopen_19.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg1;", "fdopen_20.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg1;", "fdopen_21.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg1;", "fdopen_22.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg1;", "fdopen_23.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg1;", "fdopen_24.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg1;", "fdopen_25.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg1;", "fdopen_26.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg1;", "fdopen_27.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg1;", "fdopen_28.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg1;", "fdopen_29.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg1;", "fdopen_30.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg1;", "fdopen_31.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg1;", "fdopen_32.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg1;", "fdopen_33.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg1;", "fdopen_34.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg1;", "fdopen_35.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg1)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg1;", "fdopen_36.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _shortbuf == arg1;", "fdopen_37.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg1)
		{
			SpecFileGeneration("result -> _lock == arg1;", "fdopen_38.cpp", funSignature);
		}
	}

	return 0;
}
