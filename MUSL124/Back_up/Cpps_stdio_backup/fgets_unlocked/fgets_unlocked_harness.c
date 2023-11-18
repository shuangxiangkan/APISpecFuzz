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

//		char *arg0 = strtok(buf, "\n");
//		int arg1;
//		sscanf(strtok(NULL, "\n"), "%d", &arg1);

        char buffer[100];

		FILE *fp; 
		fp = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt/file.txt" , "r");
		if(fp == NULL) {
			perror("Error opening file");
			return(-1);
		}


		char* result = fgets_unlocked(buffer, sizeof(buffer), fp);
		const char *funSignature = "char* fgets_unlocked(char* arg0, int arg1, FILE* arg0)";
		
		if(result == arg0)
		{
			SpecFileGeneration("return arg0;", "fgets_unlocked_0.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg2 -> _IO_read_ptr;", "fgets_unlocked_1.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("return arg2 -> _IO_read_end;", "fgets_unlocked_2.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("return arg2 -> _IO_read_base;", "fgets_unlocked_3.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("return arg2 -> _IO_write_base;", "fgets_unlocked_4.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg2 -> _IO_write_ptr;", "fgets_unlocked_5.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("return arg2 -> _IO_write_end;", "fgets_unlocked_6.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("return arg2 -> _IO_buf_base;", "fgets_unlocked_7.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("return arg2 -> _IO_buf_end;", "fgets_unlocked_8.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("return arg2 -> _IO_save_base;", "fgets_unlocked_9.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("return arg2 -> _IO_backup_base;", "fgets_unlocked_10.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("return arg2 -> _IO_save_end;", "fgets_unlocked_11.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "fgets_unlocked_12.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_read_end;", "fgets_unlocked_13.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_read_base;", "fgets_unlocked_14.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_write_base;", "fgets_unlocked_15.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "fgets_unlocked_16.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_write_end;", "fgets_unlocked_17.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_buf_base;", "fgets_unlocked_18.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_buf_end;", "fgets_unlocked_19.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_save_base;", "fgets_unlocked_20.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_backup_base;", "fgets_unlocked_21.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _IO_save_end;", "fgets_unlocked_22.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _shortbuf;", "fgets_unlocked_23.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _lock;", "fgets_unlocked_24.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_read_ptr;", "fgets_unlocked_25.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_read_end;", "fgets_unlocked_26.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_read_base;", "fgets_unlocked_27.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_write_base;", "fgets_unlocked_28.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_write_ptr;", "fgets_unlocked_29.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_write_end;", "fgets_unlocked_30.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_buf_base;", "fgets_unlocked_31.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_buf_end;", "fgets_unlocked_32.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_save_base;", "fgets_unlocked_33.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_backup_base;", "fgets_unlocked_34.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("return arg2 -> _chain -> _IO_save_end;", "fgets_unlocked_35.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("return arg2 -> _chain -> _shortbuf;", "fgets_unlocked_36.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("return arg2 -> _chain -> _lock;", "fgets_unlocked_37.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _shortbuf)
		{
			SpecFileGeneration("return arg2 -> _shortbuf;", "fgets_unlocked_38.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _lock)
		{
			SpecFileGeneration("return arg2 -> _lock;", "fgets_unlocked_39.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_ptr;", "fgets_unlocked_40.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_end;", "fgets_unlocked_41.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_base;", "fgets_unlocked_42.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_base;", "fgets_unlocked_43.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_ptr;", "fgets_unlocked_44.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_end;", "fgets_unlocked_45.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_buf_base;", "fgets_unlocked_46.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_buf_end;", "fgets_unlocked_47.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_save_base;", "fgets_unlocked_48.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_backup_base;", "fgets_unlocked_49.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_save_end;", "fgets_unlocked_50.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "fgets_unlocked_51.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_end;", "fgets_unlocked_52.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_base;", "fgets_unlocked_53.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_base;", "fgets_unlocked_54.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "fgets_unlocked_55.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_end;", "fgets_unlocked_56.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "fgets_unlocked_57.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "fgets_unlocked_58.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_save_base;", "fgets_unlocked_59.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "fgets_unlocked_60.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_save_end;", "fgets_unlocked_61.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _shortbuf;", "fgets_unlocked_62.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _lock;", "fgets_unlocked_63.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_ptr;", "fgets_unlocked_64.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_end;", "fgets_unlocked_65.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_base;", "fgets_unlocked_66.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_base;", "fgets_unlocked_67.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_ptr;", "fgets_unlocked_68.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_end;", "fgets_unlocked_69.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_buf_base;", "fgets_unlocked_70.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_buf_end;", "fgets_unlocked_71.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_save_base;", "fgets_unlocked_72.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_backup_base;", "fgets_unlocked_73.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_save_end;", "fgets_unlocked_74.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _shortbuf;", "fgets_unlocked_75.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _lock;", "fgets_unlocked_76.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _shortbuf;", "fgets_unlocked_77.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _lock;", "fgets_unlocked_78.cpp", funSignature);
		}
	}

	return 0;
}
