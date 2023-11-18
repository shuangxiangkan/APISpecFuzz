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

		char *arg0 = strtok(buf, "\n");
		FILE *fp; 
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt" , "w+");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}


		int result = fputs_unlocked(arg0, fp);
		const char *funSignature = "int fputs_unlocked(char* arg0, FILE* arg0)";
		
		if(arg1 != NULL && arg0 == arg1 -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_read_ptr;", "fputs_unlocked_0.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_read_end;", "fputs_unlocked_1.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_read_base;", "fputs_unlocked_2.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_write_base;", "fputs_unlocked_3.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_write_ptr;", "fputs_unlocked_4.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_write_end;", "fputs_unlocked_5.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_buf_base;", "fputs_unlocked_6.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_buf_end;", "fputs_unlocked_7.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_save_base;", "fputs_unlocked_8.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_backup_base;", "fputs_unlocked_9.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _IO_save_end;", "fputs_unlocked_10.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_read_ptr;", "fputs_unlocked_11.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_read_end;", "fputs_unlocked_12.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_read_base;", "fputs_unlocked_13.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_write_base;", "fputs_unlocked_14.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_write_ptr;", "fputs_unlocked_15.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_write_end;", "fputs_unlocked_16.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_buf_base;", "fputs_unlocked_17.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_buf_end;", "fputs_unlocked_18.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_save_base;", "fputs_unlocked_19.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_backup_base;", "fputs_unlocked_20.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _IO_save_end;", "fputs_unlocked_21.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _shortbuf;", "fputs_unlocked_22.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _markers != NULL && arg1 -> _markers -> _sbuf != NULL && arg0 == arg1 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("arg0 == arg1 -> _markers -> _sbuf -> _lock;", "fputs_unlocked_23.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_read_ptr;", "fputs_unlocked_24.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_read_end;", "fputs_unlocked_25.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_read_base;", "fputs_unlocked_26.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_write_base;", "fputs_unlocked_27.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_write_ptr;", "fputs_unlocked_28.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_write_end;", "fputs_unlocked_29.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_buf_base;", "fputs_unlocked_30.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_buf_end;", "fputs_unlocked_31.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_save_base;", "fputs_unlocked_32.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_backup_base;", "fputs_unlocked_33.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _IO_save_end;", "fputs_unlocked_34.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _shortbuf;", "fputs_unlocked_35.cpp", funSignature);
		}
		if(arg1 != NULL && arg1 -> _chain != NULL && arg0 == arg1 -> _chain -> _lock)
		{
			SpecFileGeneration("arg0 == arg1 -> _chain -> _lock;", "fputs_unlocked_36.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg1 -> _shortbuf;", "fputs_unlocked_37.cpp", funSignature);
		}
		if(arg1 != NULL && arg0 == arg1 -> _lock)
		{
			SpecFileGeneration("arg0 == arg1 -> _lock;", "fputs_unlocked_38.cpp", funSignature);
		}
	}

	return 0;
}
