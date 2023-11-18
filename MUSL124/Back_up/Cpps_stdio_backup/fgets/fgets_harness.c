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
//		memset(buf, 0, sizeof(buf));
//		if (read(0, buf, sizeof(buf)) < 0) {
//			return 1;
//		}

		char arg0[60];
//		int arg1;
//		sscanf(strtok(NULL, "\n"), "%d", &arg1);

		FILE *fp; 
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt" , "r");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}


		char* result = fgets(fp, 60, fp);
		const char *funSignature = "char* fgets(char* arg0, int arg1, FILE* arg0)";
		
		if(result == arg0)
		{
			SpecFileGeneration("return arg0;", "fgets_0.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg2 -> _IO_read_ptr;", "fgets_1.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("return arg2 -> _IO_read_end;", "fgets_2.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("return arg2 -> _IO_read_base;", "fgets_3.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("return arg2 -> _IO_write_base;", "fgets_4.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg2 -> _IO_write_ptr;", "fgets_5.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("return arg2 -> _IO_write_end;", "fgets_6.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("return arg2 -> _IO_buf_base;", "fgets_7.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("return arg2 -> _IO_buf_end;", "fgets_8.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("return arg2 -> _IO_save_base;", "fgets_9.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("return arg2 -> _IO_backup_base;", "fgets_10.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("return arg2 -> _IO_save_end;", "fgets_11.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "fgets_12.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_read_end;", "fgets_13.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_read_base;", "fgets_14.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_write_base;", "fgets_15.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "fgets_16.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_write_end;", "fgets_17.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_buf_base;", "fgets_18.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_buf_end;", "fgets_19.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_save_base;", "fgets_20.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_backup_base;", "fgets_21.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_save_end;", "fgets_22.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _shortbuf;", "fgets_23.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _lock;", "fgets_24.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_read_ptr;", "fgets_25.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_read_end;", "fgets_26.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_read_base;", "fgets_27.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_write_base;", "fgets_28.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_write_ptr;", "fgets_29.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_write_end;", "fgets_30.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_buf_base;", "fgets_31.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_buf_end;", "fgets_32.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_save_base;", "fgets_33.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_backup_base;", "fgets_34.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_save_end;", "fgets_35.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("return arg2 -> _chain -> _shortbuf;", "fgets_36.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("return arg2 -> _chain -> _lock;", "fgets_37.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _shortbuf)
		{
			SpecFileGeneration("return arg2 -> _shortbuf;", "fgets_38.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _lock)
		{
			SpecFileGeneration("return arg2 -> _lock;", "fgets_39.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_ptr;", "fgets_40.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_end;", "fgets_41.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_base;", "fgets_42.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_base;", "fgets_43.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_ptr;", "fgets_44.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_end;", "fgets_45.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_buf_base;", "fgets_46.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_buf_end;", "fgets_47.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_save_base;", "fgets_48.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_backup_base;", "fgets_49.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_save_end;", "fgets_50.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "fgets_51.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_end;", "fgets_52.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_base;", "fgets_53.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_base;", "fgets_54.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "fgets_55.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_end;", "fgets_56.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "fgets_57.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "fgets_58.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_save_base;", "fgets_59.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "fgets_60.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_save_end;", "fgets_61.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _shortbuf;", "fgets_62.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _lock;", "fgets_63.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_ptr;", "fgets_64.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_end;", "fgets_65.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_base;", "fgets_66.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_base;", "fgets_67.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_ptr;", "fgets_68.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_end;", "fgets_69.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_buf_base;", "fgets_70.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_buf_end;", "fgets_71.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_save_base;", "fgets_72.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_backup_base;", "fgets_73.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_save_end;", "fgets_74.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _shortbuf;", "fgets_75.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _lock;", "fgets_76.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _shortbuf;", "fgets_77.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _lock;", "fgets_78.cpp", funSignature);
		}
	}

	return 0;
}
