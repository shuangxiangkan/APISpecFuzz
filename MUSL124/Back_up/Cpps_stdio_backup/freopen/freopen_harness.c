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
//
//		char *arg0 = strtok(buf, "\n");
//		char *arg1 = strtok(NULL, "\n");
//		FILE *fp;
//		fp = fopen("file.txt" , );
//		if(fp == NULL) {
//			perror("Error opening file");
//			return(-1);
//		}


		FILE* result = freopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt", "w", stdout);
		const char *funSignature = "FILE* freopen(char* arg0, char* arg0, FILE* arg0)";
		
		if(result != NULL && result -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg0;", "freopen_0.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _IO_read_end == arg0;", "freopen_1.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _IO_read_base == arg0;", "freopen_2.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _IO_write_base == arg0;", "freopen_3.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg0;", "freopen_4.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _IO_write_end == arg0;", "freopen_5.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg0;", "freopen_6.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg0;", "freopen_7.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _IO_save_base == arg0;", "freopen_8.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg0;", "freopen_9.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _IO_save_end == arg0;", "freopen_10.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg0;", "freopen_11.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg0;", "freopen_12.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg0;", "freopen_13.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg0;", "freopen_14.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg0;", "freopen_15.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg0;", "freopen_16.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg0;", "freopen_17.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg0;", "freopen_18.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg0;", "freopen_19.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg0;", "freopen_20.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg0;", "freopen_21.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg0;", "freopen_22.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg0;", "freopen_23.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg0;", "freopen_24.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg0;", "freopen_25.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg0;", "freopen_26.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg0;", "freopen_27.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg0;", "freopen_28.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg0;", "freopen_29.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg0;", "freopen_30.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg0;", "freopen_31.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg0;", "freopen_32.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg0;", "freopen_33.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg0;", "freopen_34.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg0;", "freopen_35.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg0)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg0;", "freopen_36.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _shortbuf == arg0;", "freopen_37.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg0)
		{
			SpecFileGeneration("result -> _lock == arg0;", "freopen_38.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg1;", "freopen_39.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _IO_read_end == arg1;", "freopen_40.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _IO_read_base == arg1;", "freopen_41.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _IO_write_base == arg1;", "freopen_42.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg1;", "freopen_43.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _IO_write_end == arg1;", "freopen_44.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg1;", "freopen_45.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg1;", "freopen_46.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _IO_save_base == arg1;", "freopen_47.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg1;", "freopen_48.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _IO_save_end == arg1;", "freopen_49.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg1;", "freopen_50.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg1;", "freopen_51.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg1;", "freopen_52.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg1;", "freopen_53.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg1;", "freopen_54.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg1;", "freopen_55.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg1;", "freopen_56.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg1;", "freopen_57.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg1;", "freopen_58.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg1;", "freopen_59.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg1;", "freopen_60.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg1;", "freopen_61.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg1;", "freopen_62.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg1;", "freopen_63.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg1;", "freopen_64.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg1;", "freopen_65.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg1;", "freopen_66.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg1;", "freopen_67.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg1;", "freopen_68.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg1;", "freopen_69.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg1;", "freopen_70.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg1;", "freopen_71.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg1;", "freopen_72.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg1;", "freopen_73.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg1;", "freopen_74.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg1)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg1;", "freopen_75.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _shortbuf == arg1;", "freopen_76.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg1)
		{
			SpecFileGeneration("result -> _lock == arg1;", "freopen_77.cpp", funSignature);
		}
		if(result == arg2)
		{
			SpecFileGeneration("return arg2;", "freopen_78.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("return arg2 -> _markers -> _sbuf -> _lock;", "freopen_79.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && result == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("return arg2 -> _chain -> _lock;", "freopen_80.cpp", funSignature);
		}
		if(arg2 != NULL && result == arg2 -> _lock)
		{
			SpecFileGeneration("return arg2 -> _lock;", "freopen_81.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_read_ptr;", "freopen_82.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_read_end;", "freopen_83.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_read_base;", "freopen_84.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_write_base;", "freopen_85.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_write_ptr;", "freopen_86.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_write_end;", "freopen_87.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_buf_base;", "freopen_88.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_buf_end;", "freopen_89.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_save_base;", "freopen_90.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_backup_base;", "freopen_91.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _IO_save_end;", "freopen_92.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_93.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_94.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_95.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_96.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_97.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_98.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_99.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_100.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_101.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_102.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_103.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_104.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _lock;", "freopen_105.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_read_ptr;", "freopen_106.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_read_end;", "freopen_107.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_read_base;", "freopen_108.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_write_base;", "freopen_109.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_write_ptr;", "freopen_110.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_write_end;", "freopen_111.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_base;", "freopen_112.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_end;", "freopen_113.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_save_base;", "freopen_114.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_backup_base;", "freopen_115.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _IO_save_end;", "freopen_116.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _shortbuf;", "freopen_117.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_ptr == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _chain -> _lock;", "freopen_118.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _shortbuf;", "freopen_119.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_ptr == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2 -> _lock;", "freopen_120.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_read_ptr;", "freopen_121.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_read_end;", "freopen_122.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_read_base;", "freopen_123.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_write_base;", "freopen_124.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_write_ptr;", "freopen_125.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_write_end;", "freopen_126.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_buf_base;", "freopen_127.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_buf_end;", "freopen_128.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_save_base;", "freopen_129.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_backup_base;", "freopen_130.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _IO_save_end;", "freopen_131.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_132.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_133.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_134.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_135.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_136.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_137.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_138.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_139.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_140.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_141.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_142.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_143.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_144.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_145.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_read_end;", "freopen_146.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_read_base;", "freopen_147.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_write_base;", "freopen_148.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_149.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_write_end;", "freopen_150.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_buf_base;", "freopen_151.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_buf_end;", "freopen_152.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_save_base;", "freopen_153.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_backup_base;", "freopen_154.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _IO_save_end;", "freopen_155.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _shortbuf;", "freopen_156.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _chain -> _lock;", "freopen_157.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _shortbuf;", "freopen_158.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2 -> _lock;", "freopen_159.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_read_ptr;", "freopen_160.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_read_end;", "freopen_161.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_read_base;", "freopen_162.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_write_base;", "freopen_163.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_write_ptr;", "freopen_164.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_write_end;", "freopen_165.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_buf_base;", "freopen_166.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_buf_end;", "freopen_167.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_save_base;", "freopen_168.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_backup_base;", "freopen_169.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _IO_save_end;", "freopen_170.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_171.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_172.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_173.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_174.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_175.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_176.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_177.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_178.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_179.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_180.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_181.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_182.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_183.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_184.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_read_end;", "freopen_185.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_read_base;", "freopen_186.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_write_base;", "freopen_187.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_188.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_write_end;", "freopen_189.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_buf_base;", "freopen_190.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_buf_end;", "freopen_191.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_save_base;", "freopen_192.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_backup_base;", "freopen_193.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _IO_save_end;", "freopen_194.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _shortbuf;", "freopen_195.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_read_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _chain -> _lock;", "freopen_196.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _shortbuf;", "freopen_197.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_read_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2 -> _lock;", "freopen_198.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_read_ptr;", "freopen_199.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_read_end;", "freopen_200.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_read_base;", "freopen_201.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_write_base;", "freopen_202.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_write_ptr;", "freopen_203.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_write_end;", "freopen_204.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_buf_base;", "freopen_205.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_buf_end;", "freopen_206.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_save_base;", "freopen_207.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_backup_base;", "freopen_208.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _IO_save_end;", "freopen_209.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_210.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_211.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_212.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_213.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_214.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_215.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_216.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_217.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_218.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_219.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_220.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_221.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_222.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_223.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_read_end;", "freopen_224.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_read_base;", "freopen_225.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_write_base;", "freopen_226.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_227.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_write_end;", "freopen_228.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_buf_base;", "freopen_229.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_buf_end;", "freopen_230.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_save_base;", "freopen_231.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_backup_base;", "freopen_232.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _IO_save_end;", "freopen_233.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _shortbuf;", "freopen_234.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _chain -> _lock;", "freopen_235.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _shortbuf;", "freopen_236.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2 -> _lock;", "freopen_237.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_read_ptr;", "freopen_238.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_read_end;", "freopen_239.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_read_base;", "freopen_240.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_write_base;", "freopen_241.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_write_ptr;", "freopen_242.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_write_end;", "freopen_243.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_buf_base;", "freopen_244.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_buf_end;", "freopen_245.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_save_base;", "freopen_246.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_backup_base;", "freopen_247.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _IO_save_end;", "freopen_248.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_249.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_250.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_251.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_252.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_253.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_254.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_255.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_256.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_257.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_258.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_259.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_260.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _lock;", "freopen_261.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_read_ptr;", "freopen_262.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_read_end;", "freopen_263.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_read_base;", "freopen_264.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_write_base;", "freopen_265.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_write_ptr;", "freopen_266.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_write_end;", "freopen_267.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_base;", "freopen_268.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_end;", "freopen_269.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_save_base;", "freopen_270.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_backup_base;", "freopen_271.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _IO_save_end;", "freopen_272.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _shortbuf;", "freopen_273.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_ptr == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _chain -> _lock;", "freopen_274.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _shortbuf;", "freopen_275.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_ptr == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2 -> _lock;", "freopen_276.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_read_ptr;", "freopen_277.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_read_end;", "freopen_278.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_read_base;", "freopen_279.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_write_base;", "freopen_280.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_write_ptr;", "freopen_281.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_write_end;", "freopen_282.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_buf_base;", "freopen_283.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_buf_end;", "freopen_284.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_save_base;", "freopen_285.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_backup_base;", "freopen_286.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _IO_save_end;", "freopen_287.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_288.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_289.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_290.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_291.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_292.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_293.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_294.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_295.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_296.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_297.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_298.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_299.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_300.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_301.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_read_end;", "freopen_302.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_read_base;", "freopen_303.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_write_base;", "freopen_304.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_305.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_write_end;", "freopen_306.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_buf_base;", "freopen_307.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_buf_end;", "freopen_308.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_save_base;", "freopen_309.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_backup_base;", "freopen_310.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _IO_save_end;", "freopen_311.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _shortbuf;", "freopen_312.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_write_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _chain -> _lock;", "freopen_313.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _shortbuf;", "freopen_314.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_write_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2 -> _lock;", "freopen_315.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_read_ptr;", "freopen_316.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_read_end;", "freopen_317.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_read_base;", "freopen_318.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_write_base;", "freopen_319.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_write_ptr;", "freopen_320.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_write_end;", "freopen_321.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_buf_base;", "freopen_322.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_buf_end;", "freopen_323.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_save_base;", "freopen_324.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_backup_base;", "freopen_325.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _IO_save_end;", "freopen_326.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_327.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_328.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_329.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_330.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_331.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_332.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_333.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_334.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_335.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_336.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_337.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_338.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_339.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_340.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_read_end;", "freopen_341.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_read_base;", "freopen_342.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_write_base;", "freopen_343.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_344.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_write_end;", "freopen_345.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_buf_base;", "freopen_346.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_buf_end;", "freopen_347.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_save_base;", "freopen_348.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_backup_base;", "freopen_349.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _IO_save_end;", "freopen_350.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _shortbuf;", "freopen_351.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _chain -> _lock;", "freopen_352.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _shortbuf;", "freopen_353.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2 -> _lock;", "freopen_354.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_read_ptr;", "freopen_355.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_read_end;", "freopen_356.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_read_base;", "freopen_357.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_write_base;", "freopen_358.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_write_ptr;", "freopen_359.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_write_end;", "freopen_360.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_buf_base;", "freopen_361.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_buf_end;", "freopen_362.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_save_base;", "freopen_363.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_backup_base;", "freopen_364.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _IO_save_end;", "freopen_365.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_366.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_367.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_368.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_369.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_370.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_371.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_372.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_373.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_374.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_375.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_376.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_377.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_378.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_379.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_read_end;", "freopen_380.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_read_base;", "freopen_381.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_write_base;", "freopen_382.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_383.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_write_end;", "freopen_384.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_buf_base;", "freopen_385.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_buf_end;", "freopen_386.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_save_base;", "freopen_387.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_backup_base;", "freopen_388.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _IO_save_end;", "freopen_389.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _shortbuf;", "freopen_390.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_buf_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _chain -> _lock;", "freopen_391.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _shortbuf;", "freopen_392.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_buf_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2 -> _lock;", "freopen_393.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_read_ptr;", "freopen_394.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_read_end;", "freopen_395.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_read_base;", "freopen_396.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_write_base;", "freopen_397.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_write_ptr;", "freopen_398.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_write_end;", "freopen_399.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_buf_base;", "freopen_400.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_buf_end;", "freopen_401.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_save_base;", "freopen_402.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_backup_base;", "freopen_403.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _IO_save_end;", "freopen_404.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_405.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_406.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_407.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_408.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_409.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_410.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_411.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_412.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_413.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_414.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_415.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_416.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_417.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_418.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_read_end;", "freopen_419.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_read_base;", "freopen_420.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_write_base;", "freopen_421.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_422.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_write_end;", "freopen_423.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_buf_base;", "freopen_424.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_buf_end;", "freopen_425.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_save_base;", "freopen_426.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_backup_base;", "freopen_427.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _IO_save_end;", "freopen_428.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _shortbuf;", "freopen_429.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _chain -> _lock;", "freopen_430.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _shortbuf;", "freopen_431.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2 -> _lock;", "freopen_432.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_read_ptr;", "freopen_433.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_read_end;", "freopen_434.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_read_base;", "freopen_435.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_write_base;", "freopen_436.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_write_ptr;", "freopen_437.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_write_end;", "freopen_438.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_buf_base;", "freopen_439.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_buf_end;", "freopen_440.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_save_base;", "freopen_441.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_backup_base;", "freopen_442.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _IO_save_end;", "freopen_443.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_444.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_445.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_446.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_447.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_448.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_449.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_450.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_451.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_452.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_453.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_454.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_455.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_456.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_457.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_read_end;", "freopen_458.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_read_base;", "freopen_459.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_write_base;", "freopen_460.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_461.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_write_end;", "freopen_462.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_buf_base;", "freopen_463.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_buf_end;", "freopen_464.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_save_base;", "freopen_465.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_backup_base;", "freopen_466.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _IO_save_end;", "freopen_467.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _shortbuf;", "freopen_468.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_backup_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _chain -> _lock;", "freopen_469.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _shortbuf;", "freopen_470.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_backup_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2 -> _lock;", "freopen_471.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_read_ptr;", "freopen_472.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_read_end;", "freopen_473.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_read_base;", "freopen_474.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_write_base;", "freopen_475.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_write_ptr;", "freopen_476.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_write_end;", "freopen_477.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_buf_base;", "freopen_478.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_buf_end;", "freopen_479.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_save_base;", "freopen_480.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_backup_base;", "freopen_481.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _IO_save_end;", "freopen_482.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_483.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_484.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_485.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_486.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_487.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_488.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_489.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_490.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_491.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_492.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_493.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_494.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_495.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_496.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_read_end;", "freopen_497.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_read_base;", "freopen_498.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_write_base;", "freopen_499.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_500.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_write_end;", "freopen_501.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_buf_base;", "freopen_502.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_buf_end;", "freopen_503.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_save_base;", "freopen_504.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_backup_base;", "freopen_505.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _IO_save_end;", "freopen_506.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _shortbuf;", "freopen_507.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _IO_save_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _chain -> _lock;", "freopen_508.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _shortbuf;", "freopen_509.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _IO_save_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2 -> _lock;", "freopen_510.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _markers == arg2 -> _markers)
		{
			SpecFileGeneration("result -> _markers == arg2 -> _markers;", "freopen_511.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _markers == arg2 -> _markers -> _next)
		{
			SpecFileGeneration("result -> _markers == arg2 -> _markers -> _next;", "freopen_512.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers == arg2 -> _markers -> _sbuf -> _markers)
		{
			SpecFileGeneration("result -> _markers == arg2 -> _markers -> _sbuf -> _markers;", "freopen_513.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers == arg2 -> _markers -> _sbuf -> _lock;", "freopen_514.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers == arg2 -> _chain -> _markers)
		{
			SpecFileGeneration("result -> _markers == arg2 -> _chain -> _markers;", "freopen_515.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _markers == arg2 -> _chain -> _markers -> _next)
		{
			SpecFileGeneration("result -> _markers == arg2 -> _chain -> _markers -> _next;", "freopen_516.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers == arg2 -> _chain -> _lock;", "freopen_517.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _markers == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers == arg2 -> _lock;", "freopen_518.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && result -> _markers -> _next == arg2 -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _next == arg2 -> _markers;", "freopen_519.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _markers -> _next == arg2 -> _markers -> _next)
		{
			SpecFileGeneration("result -> _markers -> _next == arg2 -> _markers -> _next;", "freopen_520.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _next == arg2 -> _markers -> _sbuf -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _next == arg2 -> _markers -> _sbuf -> _markers;", "freopen_521.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _next == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _next == arg2 -> _markers -> _sbuf -> _lock;", "freopen_522.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _next == arg2 -> _chain -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _next == arg2 -> _chain -> _markers;", "freopen_523.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _markers -> _next == arg2 -> _chain -> _markers -> _next)
		{
			SpecFileGeneration("result -> _markers -> _next == arg2 -> _chain -> _markers -> _next;", "freopen_524.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _next == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _next == arg2 -> _chain -> _lock;", "freopen_525.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && result -> _markers -> _next == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _next == arg2 -> _lock;", "freopen_526.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _markers -> _sbuf == arg2 -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg2 -> _markers -> _sbuf;", "freopen_527.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf == arg2 -> _markers -> _sbuf -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg2 -> _markers -> _sbuf -> _chain;", "freopen_528.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg2 -> _markers -> _sbuf -> _lock;", "freopen_529.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && result -> _markers -> _sbuf == arg2 -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg2 -> _chain;", "freopen_530.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _markers -> _sbuf == arg2 -> _chain -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg2 -> _chain -> _markers -> _sbuf;", "freopen_531.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf == arg2 -> _chain -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg2 -> _chain -> _chain;", "freopen_532.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg2 -> _chain -> _lock;", "freopen_533.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && arg2 != NULL && result -> _markers -> _sbuf == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg2 -> _lock;", "freopen_534.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_read_ptr;", "freopen_535.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_read_end;", "freopen_536.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_read_base;", "freopen_537.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_write_base;", "freopen_538.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_write_ptr;", "freopen_539.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_write_end;", "freopen_540.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_buf_base;", "freopen_541.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_buf_end;", "freopen_542.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_save_base;", "freopen_543.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_backup_base;", "freopen_544.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _IO_save_end;", "freopen_545.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_546.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_547.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_548.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_549.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_550.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_551.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_552.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_553.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_554.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_555.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_556.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_557.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _lock;", "freopen_558.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_read_ptr;", "freopen_559.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_read_end;", "freopen_560.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_read_base;", "freopen_561.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_write_base;", "freopen_562.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_write_ptr;", "freopen_563.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_write_end;", "freopen_564.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_base;", "freopen_565.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_end;", "freopen_566.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_save_base;", "freopen_567.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_backup_base;", "freopen_568.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _IO_save_end;", "freopen_569.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _shortbuf;", "freopen_570.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _chain -> _lock;", "freopen_571.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _shortbuf;", "freopen_572.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2 -> _lock;", "freopen_573.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_read_ptr;", "freopen_574.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_read_end;", "freopen_575.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_read_base;", "freopen_576.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_write_base;", "freopen_577.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_write_ptr;", "freopen_578.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_write_end;", "freopen_579.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_buf_base;", "freopen_580.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_buf_end;", "freopen_581.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_save_base;", "freopen_582.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_backup_base;", "freopen_583.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _IO_save_end;", "freopen_584.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_585.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_586.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_587.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_588.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_589.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_590.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_591.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_592.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_593.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_594.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_595.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_596.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_597.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_598.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_read_end;", "freopen_599.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_read_base;", "freopen_600.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_write_base;", "freopen_601.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_602.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_write_end;", "freopen_603.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_buf_base;", "freopen_604.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_buf_end;", "freopen_605.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_save_base;", "freopen_606.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_backup_base;", "freopen_607.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _IO_save_end;", "freopen_608.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _shortbuf;", "freopen_609.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _chain -> _lock;", "freopen_610.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _shortbuf;", "freopen_611.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2 -> _lock;", "freopen_612.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_read_ptr;", "freopen_613.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_read_end;", "freopen_614.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_read_base;", "freopen_615.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_write_base;", "freopen_616.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_write_ptr;", "freopen_617.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_write_end;", "freopen_618.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_buf_base;", "freopen_619.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_buf_end;", "freopen_620.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_save_base;", "freopen_621.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_backup_base;", "freopen_622.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _IO_save_end;", "freopen_623.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_624.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_625.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_626.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_627.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_628.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_629.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_630.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_631.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_632.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_633.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_634.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_635.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_636.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_637.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_read_end;", "freopen_638.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_read_base;", "freopen_639.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_write_base;", "freopen_640.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_641.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_write_end;", "freopen_642.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_buf_base;", "freopen_643.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_buf_end;", "freopen_644.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_save_base;", "freopen_645.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_backup_base;", "freopen_646.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _IO_save_end;", "freopen_647.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _shortbuf;", "freopen_648.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _chain -> _lock;", "freopen_649.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _shortbuf;", "freopen_650.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2 -> _lock;", "freopen_651.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_read_ptr;", "freopen_652.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_read_end;", "freopen_653.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_read_base;", "freopen_654.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_write_base;", "freopen_655.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_write_ptr;", "freopen_656.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_write_end;", "freopen_657.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_buf_base;", "freopen_658.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_buf_end;", "freopen_659.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_save_base;", "freopen_660.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_backup_base;", "freopen_661.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _IO_save_end;", "freopen_662.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_663.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_664.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_665.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_666.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_667.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_668.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_669.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_670.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_671.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_672.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_673.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_674.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_675.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_676.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_read_end;", "freopen_677.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_read_base;", "freopen_678.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_write_base;", "freopen_679.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_680.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_write_end;", "freopen_681.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_buf_base;", "freopen_682.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_buf_end;", "freopen_683.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_save_base;", "freopen_684.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_backup_base;", "freopen_685.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _IO_save_end;", "freopen_686.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _shortbuf;", "freopen_687.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _chain -> _lock;", "freopen_688.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _shortbuf;", "freopen_689.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2 -> _lock;", "freopen_690.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_read_ptr;", "freopen_691.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_read_end;", "freopen_692.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_read_base;", "freopen_693.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_write_base;", "freopen_694.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_write_ptr;", "freopen_695.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_write_end;", "freopen_696.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_buf_base;", "freopen_697.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_buf_end;", "freopen_698.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_save_base;", "freopen_699.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_backup_base;", "freopen_700.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _IO_save_end;", "freopen_701.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_702.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_703.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_704.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_705.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_706.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_707.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_708.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_709.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_710.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_711.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_712.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_713.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _lock;", "freopen_714.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_read_ptr;", "freopen_715.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_read_end;", "freopen_716.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_read_base;", "freopen_717.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_write_base;", "freopen_718.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_write_ptr;", "freopen_719.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_write_end;", "freopen_720.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_base;", "freopen_721.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_end;", "freopen_722.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_save_base;", "freopen_723.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_backup_base;", "freopen_724.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _IO_save_end;", "freopen_725.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _shortbuf;", "freopen_726.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _chain -> _lock;", "freopen_727.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _shortbuf;", "freopen_728.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2 -> _lock;", "freopen_729.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_read_ptr;", "freopen_730.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_read_end;", "freopen_731.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_read_base;", "freopen_732.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_write_base;", "freopen_733.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_write_ptr;", "freopen_734.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_write_end;", "freopen_735.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_buf_base;", "freopen_736.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_buf_end;", "freopen_737.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_save_base;", "freopen_738.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_backup_base;", "freopen_739.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _IO_save_end;", "freopen_740.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_741.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_742.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_743.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_744.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_745.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_746.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_747.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_748.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_749.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_750.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_751.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_752.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_753.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_754.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_read_end;", "freopen_755.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_read_base;", "freopen_756.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_write_base;", "freopen_757.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_758.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_write_end;", "freopen_759.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_buf_base;", "freopen_760.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_buf_end;", "freopen_761.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_save_base;", "freopen_762.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_backup_base;", "freopen_763.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _IO_save_end;", "freopen_764.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _shortbuf;", "freopen_765.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _chain -> _lock;", "freopen_766.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _shortbuf;", "freopen_767.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2 -> _lock;", "freopen_768.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_read_ptr;", "freopen_769.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_read_end;", "freopen_770.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_read_base;", "freopen_771.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_write_base;", "freopen_772.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_write_ptr;", "freopen_773.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_write_end;", "freopen_774.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_buf_base;", "freopen_775.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_buf_end;", "freopen_776.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_save_base;", "freopen_777.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_backup_base;", "freopen_778.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _IO_save_end;", "freopen_779.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_780.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_781.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_782.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_783.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_784.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_785.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_786.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_787.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_788.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_789.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_790.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_791.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_792.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_793.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_read_end;", "freopen_794.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_read_base;", "freopen_795.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_write_base;", "freopen_796.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_797.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_write_end;", "freopen_798.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_buf_base;", "freopen_799.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_buf_end;", "freopen_800.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_save_base;", "freopen_801.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_backup_base;", "freopen_802.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _IO_save_end;", "freopen_803.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _shortbuf;", "freopen_804.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _chain -> _lock;", "freopen_805.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _shortbuf;", "freopen_806.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2 -> _lock;", "freopen_807.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_read_ptr;", "freopen_808.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_read_end;", "freopen_809.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_read_base;", "freopen_810.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_write_base;", "freopen_811.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_write_ptr;", "freopen_812.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_write_end;", "freopen_813.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_buf_base;", "freopen_814.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_buf_end;", "freopen_815.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_save_base;", "freopen_816.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_backup_base;", "freopen_817.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _IO_save_end;", "freopen_818.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_819.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_820.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_821.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_822.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_823.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_824.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_825.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_826.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_827.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_828.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_829.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_830.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_831.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_832.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_read_end;", "freopen_833.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_read_base;", "freopen_834.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_write_base;", "freopen_835.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_836.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_write_end;", "freopen_837.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_buf_base;", "freopen_838.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_buf_end;", "freopen_839.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_save_base;", "freopen_840.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_backup_base;", "freopen_841.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _IO_save_end;", "freopen_842.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _shortbuf;", "freopen_843.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _chain -> _lock;", "freopen_844.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _shortbuf;", "freopen_845.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2 -> _lock;", "freopen_846.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_read_ptr;", "freopen_847.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_read_end;", "freopen_848.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_read_base;", "freopen_849.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_write_base;", "freopen_850.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_write_ptr;", "freopen_851.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_write_end;", "freopen_852.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_buf_base;", "freopen_853.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_buf_end;", "freopen_854.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_save_base;", "freopen_855.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_backup_base;", "freopen_856.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _IO_save_end;", "freopen_857.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_858.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_859.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_860.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_861.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_862.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_863.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_864.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_865.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_866.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_867.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_868.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_869.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_870.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_871.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_read_end;", "freopen_872.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_read_base;", "freopen_873.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_write_base;", "freopen_874.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_875.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_write_end;", "freopen_876.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_buf_base;", "freopen_877.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_buf_end;", "freopen_878.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_save_base;", "freopen_879.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_backup_base;", "freopen_880.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _IO_save_end;", "freopen_881.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _shortbuf;", "freopen_882.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _chain -> _lock;", "freopen_883.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _shortbuf;", "freopen_884.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2 -> _lock;", "freopen_885.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_read_ptr;", "freopen_886.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_read_end;", "freopen_887.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_read_base;", "freopen_888.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_write_base;", "freopen_889.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_write_ptr;", "freopen_890.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_write_end;", "freopen_891.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_buf_base;", "freopen_892.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_buf_end;", "freopen_893.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_save_base;", "freopen_894.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_backup_base;", "freopen_895.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _IO_save_end;", "freopen_896.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_897.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_898.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_899.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_900.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_901.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_902.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_903.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_904.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_905.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_906.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_907.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_908.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_909.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_910.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_read_end;", "freopen_911.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_read_base;", "freopen_912.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_write_base;", "freopen_913.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_914.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_write_end;", "freopen_915.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_buf_base;", "freopen_916.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_buf_end;", "freopen_917.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_save_base;", "freopen_918.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_backup_base;", "freopen_919.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _IO_save_end;", "freopen_920.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _shortbuf;", "freopen_921.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _chain -> _lock;", "freopen_922.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _shortbuf;", "freopen_923.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2 -> _lock;", "freopen_924.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_read_ptr;", "freopen_925.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_read_end;", "freopen_926.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_read_base;", "freopen_927.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_write_base;", "freopen_928.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_write_ptr;", "freopen_929.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_write_end;", "freopen_930.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_buf_base;", "freopen_931.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_buf_end;", "freopen_932.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_save_base;", "freopen_933.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_backup_base;", "freopen_934.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _IO_save_end;", "freopen_935.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_936.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_937.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_938.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_939.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_940.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_941.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_942.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_943.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_944.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_945.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_946.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_947.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_948.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_949.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_read_end;", "freopen_950.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_read_base;", "freopen_951.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_write_base;", "freopen_952.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_953.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_write_end;", "freopen_954.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_buf_base;", "freopen_955.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_buf_end;", "freopen_956.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_save_base;", "freopen_957.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_backup_base;", "freopen_958.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _IO_save_end;", "freopen_959.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _shortbuf;", "freopen_960.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _chain -> _lock;", "freopen_961.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _shortbuf;", "freopen_962.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2 -> _lock;", "freopen_963.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _markers == arg2 -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg2 -> _markers;", "freopen_964.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _markers -> _sbuf -> _markers == arg2 -> _markers -> _next)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg2 -> _markers -> _next;", "freopen_965.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _markers == arg2 -> _markers -> _sbuf -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg2 -> _markers -> _sbuf -> _markers;", "freopen_966.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _markers == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg2 -> _markers -> _sbuf -> _lock;", "freopen_967.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _markers == arg2 -> _chain -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg2 -> _chain -> _markers;", "freopen_968.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _markers -> _sbuf -> _markers == arg2 -> _chain -> _markers -> _next)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg2 -> _chain -> _markers -> _next;", "freopen_969.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _markers == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg2 -> _chain -> _lock;", "freopen_970.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _markers == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg2 -> _lock;", "freopen_971.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _markers -> _sbuf -> _chain == arg2 -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg2 -> _markers -> _sbuf;", "freopen_972.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _chain == arg2 -> _markers -> _sbuf -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg2 -> _markers -> _sbuf -> _chain;", "freopen_973.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _chain == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg2 -> _markers -> _sbuf -> _lock;", "freopen_974.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _chain == arg2 -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg2 -> _chain;", "freopen_975.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _markers -> _sbuf -> _chain == arg2 -> _chain -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg2 -> _chain -> _markers -> _sbuf;", "freopen_976.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _chain == arg2 -> _chain -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg2 -> _chain -> _chain;", "freopen_977.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _chain == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg2 -> _chain -> _lock;", "freopen_978.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _chain == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg2 -> _lock;", "freopen_979.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_read_ptr;", "freopen_980.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_read_end;", "freopen_981.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_read_base;", "freopen_982.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_write_base;", "freopen_983.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_write_ptr;", "freopen_984.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_write_end;", "freopen_985.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_buf_base;", "freopen_986.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_buf_end;", "freopen_987.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_save_base;", "freopen_988.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_backup_base;", "freopen_989.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _IO_save_end;", "freopen_990.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_991.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_992.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_993.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_994.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_995.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_996.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_997.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_998.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_999.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1000.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1001.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1002.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1003.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_read_ptr;", "freopen_1004.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_read_end;", "freopen_1005.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_read_base;", "freopen_1006.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_write_base;", "freopen_1007.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_write_ptr;", "freopen_1008.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_write_end;", "freopen_1009.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_buf_base;", "freopen_1010.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_buf_end;", "freopen_1011.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_save_base;", "freopen_1012.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_backup_base;", "freopen_1013.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _IO_save_end;", "freopen_1014.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _shortbuf;", "freopen_1015.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _chain -> _lock;", "freopen_1016.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _shortbuf;", "freopen_1017.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2 -> _lock;", "freopen_1018.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2;", "freopen_1019.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_read_ptr;", "freopen_1020.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_read_end;", "freopen_1021.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_read_base;", "freopen_1022.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_write_base;", "freopen_1023.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_write_ptr;", "freopen_1024.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_write_end;", "freopen_1025.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_buf_base;", "freopen_1026.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_buf_end;", "freopen_1027.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_save_base;", "freopen_1028.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_backup_base;", "freopen_1029.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _IO_save_end;", "freopen_1030.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers;", "freopen_1031.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _next)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _next;", "freopen_1032.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf;", "freopen_1033.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1034.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1035.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1036.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1037.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1038.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1039.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1040.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1041.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1042.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1043.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1044.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _markers;", "freopen_1045.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _chain;", "freopen_1046.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1047.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1048.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain;", "freopen_1049.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_read_ptr;", "freopen_1050.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_read_end;", "freopen_1051.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_read_base;", "freopen_1052.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_write_base;", "freopen_1053.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_write_ptr;", "freopen_1054.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_write_end;", "freopen_1055.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_buf_base;", "freopen_1056.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_buf_end;", "freopen_1057.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_save_base;", "freopen_1058.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_backup_base;", "freopen_1059.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _IO_save_end;", "freopen_1060.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _markers)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _markers;", "freopen_1061.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _markers -> _next)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _markers -> _next;", "freopen_1062.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _markers -> _sbuf;", "freopen_1063.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _chain)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _chain;", "freopen_1064.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _shortbuf;", "freopen_1065.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _chain -> _lock;", "freopen_1066.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _shortbuf;", "freopen_1067.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && arg2 != NULL && result -> _markers -> _sbuf -> _lock == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2 -> _lock;", "freopen_1068.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _chain == arg2 -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _chain == arg2 -> _markers -> _sbuf;", "freopen_1069.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain == arg2 -> _markers -> _sbuf -> _chain)
		{
			SpecFileGeneration("result -> _chain == arg2 -> _markers -> _sbuf -> _chain;", "freopen_1070.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1071.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _chain == arg2 -> _chain)
		{
			SpecFileGeneration("result -> _chain == arg2 -> _chain;", "freopen_1072.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _chain == arg2 -> _chain -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _chain == arg2 -> _chain -> _markers -> _sbuf;", "freopen_1073.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain == arg2 -> _chain -> _chain)
		{
			SpecFileGeneration("result -> _chain == arg2 -> _chain -> _chain;", "freopen_1074.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain == arg2 -> _chain -> _lock;", "freopen_1075.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _chain == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain == arg2 -> _lock;", "freopen_1076.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_read_ptr;", "freopen_1077.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_read_end;", "freopen_1078.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_read_base;", "freopen_1079.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_write_base;", "freopen_1080.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_write_ptr;", "freopen_1081.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_write_end;", "freopen_1082.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_buf_base;", "freopen_1083.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_buf_end;", "freopen_1084.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_save_base;", "freopen_1085.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_backup_base;", "freopen_1086.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _IO_save_end;", "freopen_1087.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1088.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1089.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1090.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1091.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1092.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1093.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1094.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1095.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1096.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1097.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1098.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1099.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1100.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_read_ptr;", "freopen_1101.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_read_end;", "freopen_1102.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_read_base;", "freopen_1103.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_write_base;", "freopen_1104.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_write_ptr;", "freopen_1105.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_write_end;", "freopen_1106.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_base;", "freopen_1107.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_buf_end;", "freopen_1108.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_save_base;", "freopen_1109.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_backup_base;", "freopen_1110.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _IO_save_end;", "freopen_1111.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _shortbuf;", "freopen_1112.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _chain -> _lock;", "freopen_1113.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _shortbuf;", "freopen_1114.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_ptr == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2 -> _lock;", "freopen_1115.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_read_ptr;", "freopen_1116.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_read_end;", "freopen_1117.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_read_base;", "freopen_1118.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_write_base;", "freopen_1119.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_write_ptr;", "freopen_1120.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_write_end;", "freopen_1121.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_buf_base;", "freopen_1122.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_buf_end;", "freopen_1123.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_save_base;", "freopen_1124.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_backup_base;", "freopen_1125.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _IO_save_end;", "freopen_1126.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1127.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1128.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1129.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1130.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1131.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1132.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1133.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1134.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1135.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1136.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1137.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1138.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1139.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_1140.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_read_end;", "freopen_1141.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_read_base;", "freopen_1142.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_write_base;", "freopen_1143.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_1144.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_write_end;", "freopen_1145.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_buf_base;", "freopen_1146.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_buf_end;", "freopen_1147.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_save_base;", "freopen_1148.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_backup_base;", "freopen_1149.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _IO_save_end;", "freopen_1150.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _shortbuf;", "freopen_1151.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _chain -> _lock;", "freopen_1152.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _shortbuf;", "freopen_1153.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2 -> _lock;", "freopen_1154.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_read_ptr;", "freopen_1155.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_read_end;", "freopen_1156.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_read_base;", "freopen_1157.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_write_base;", "freopen_1158.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_write_ptr;", "freopen_1159.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_write_end;", "freopen_1160.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_buf_base;", "freopen_1161.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_buf_end;", "freopen_1162.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_save_base;", "freopen_1163.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_backup_base;", "freopen_1164.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _IO_save_end;", "freopen_1165.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1166.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1167.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1168.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1169.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1170.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1171.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1172.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1173.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1174.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1175.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1176.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1177.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1178.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_1179.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_read_end;", "freopen_1180.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_read_base;", "freopen_1181.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_write_base;", "freopen_1182.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_1183.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_write_end;", "freopen_1184.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_buf_base;", "freopen_1185.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_buf_end;", "freopen_1186.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_save_base;", "freopen_1187.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_backup_base;", "freopen_1188.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _IO_save_end;", "freopen_1189.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _shortbuf;", "freopen_1190.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_read_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _chain -> _lock;", "freopen_1191.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _shortbuf;", "freopen_1192.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_read_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2 -> _lock;", "freopen_1193.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_read_ptr;", "freopen_1194.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_read_end;", "freopen_1195.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_read_base;", "freopen_1196.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_write_base;", "freopen_1197.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_write_ptr;", "freopen_1198.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_write_end;", "freopen_1199.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_buf_base;", "freopen_1200.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_buf_end;", "freopen_1201.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_save_base;", "freopen_1202.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_backup_base;", "freopen_1203.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _IO_save_end;", "freopen_1204.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1205.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1206.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1207.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1208.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1209.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1210.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1211.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1212.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1213.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1214.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1215.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1216.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1217.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_1218.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_read_end;", "freopen_1219.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_read_base;", "freopen_1220.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_write_base;", "freopen_1221.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_1222.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_write_end;", "freopen_1223.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_buf_base;", "freopen_1224.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_buf_end;", "freopen_1225.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_save_base;", "freopen_1226.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_backup_base;", "freopen_1227.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _IO_save_end;", "freopen_1228.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _shortbuf;", "freopen_1229.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _chain -> _lock;", "freopen_1230.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _shortbuf;", "freopen_1231.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2 -> _lock;", "freopen_1232.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_read_ptr;", "freopen_1233.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_read_end;", "freopen_1234.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_read_base;", "freopen_1235.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_write_base;", "freopen_1236.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_write_ptr;", "freopen_1237.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_write_end;", "freopen_1238.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_buf_base;", "freopen_1239.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_buf_end;", "freopen_1240.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_save_base;", "freopen_1241.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_backup_base;", "freopen_1242.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _IO_save_end;", "freopen_1243.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1244.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1245.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1246.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1247.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1248.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1249.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1250.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1251.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1252.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1253.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1254.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1255.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1256.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_read_ptr;", "freopen_1257.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_read_end;", "freopen_1258.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_read_base;", "freopen_1259.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_write_base;", "freopen_1260.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_write_ptr;", "freopen_1261.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_write_end;", "freopen_1262.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_base;", "freopen_1263.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_buf_end;", "freopen_1264.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_save_base;", "freopen_1265.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_backup_base;", "freopen_1266.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _IO_save_end;", "freopen_1267.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _shortbuf;", "freopen_1268.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _chain -> _lock;", "freopen_1269.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _shortbuf;", "freopen_1270.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_ptr == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2 -> _lock;", "freopen_1271.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_read_ptr;", "freopen_1272.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_read_end;", "freopen_1273.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_read_base;", "freopen_1274.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_write_base;", "freopen_1275.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_write_ptr;", "freopen_1276.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_write_end;", "freopen_1277.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_buf_base;", "freopen_1278.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_buf_end;", "freopen_1279.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_save_base;", "freopen_1280.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_backup_base;", "freopen_1281.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _IO_save_end;", "freopen_1282.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1283.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1284.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1285.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1286.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1287.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1288.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1289.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1290.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1291.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1292.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1293.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1294.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1295.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_1296.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_read_end;", "freopen_1297.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_read_base;", "freopen_1298.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_write_base;", "freopen_1299.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_1300.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_write_end;", "freopen_1301.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_buf_base;", "freopen_1302.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_buf_end;", "freopen_1303.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_save_base;", "freopen_1304.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_backup_base;", "freopen_1305.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _IO_save_end;", "freopen_1306.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _shortbuf;", "freopen_1307.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_write_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _chain -> _lock;", "freopen_1308.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _shortbuf;", "freopen_1309.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_write_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2 -> _lock;", "freopen_1310.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_read_ptr;", "freopen_1311.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_read_end;", "freopen_1312.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_read_base;", "freopen_1313.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_write_base;", "freopen_1314.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_write_ptr;", "freopen_1315.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_write_end;", "freopen_1316.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_buf_base;", "freopen_1317.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_buf_end;", "freopen_1318.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_save_base;", "freopen_1319.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_backup_base;", "freopen_1320.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _IO_save_end;", "freopen_1321.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1322.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1323.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1324.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1325.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1326.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1327.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1328.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1329.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1330.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1331.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1332.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1333.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1334.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_1335.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_read_end;", "freopen_1336.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_read_base;", "freopen_1337.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_write_base;", "freopen_1338.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_1339.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_write_end;", "freopen_1340.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_buf_base;", "freopen_1341.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_buf_end;", "freopen_1342.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_save_base;", "freopen_1343.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_backup_base;", "freopen_1344.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _IO_save_end;", "freopen_1345.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _shortbuf;", "freopen_1346.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _chain -> _lock;", "freopen_1347.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _shortbuf;", "freopen_1348.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2 -> _lock;", "freopen_1349.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_read_ptr;", "freopen_1350.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_read_end;", "freopen_1351.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_read_base;", "freopen_1352.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_write_base;", "freopen_1353.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_write_ptr;", "freopen_1354.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_write_end;", "freopen_1355.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_buf_base;", "freopen_1356.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_buf_end;", "freopen_1357.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_save_base;", "freopen_1358.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_backup_base;", "freopen_1359.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _IO_save_end;", "freopen_1360.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1361.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1362.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1363.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1364.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1365.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1366.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1367.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1368.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1369.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1370.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1371.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1372.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1373.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_1374.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_read_end;", "freopen_1375.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_read_base;", "freopen_1376.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_write_base;", "freopen_1377.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_1378.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_write_end;", "freopen_1379.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_buf_base;", "freopen_1380.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_buf_end;", "freopen_1381.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_save_base;", "freopen_1382.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_backup_base;", "freopen_1383.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _IO_save_end;", "freopen_1384.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _shortbuf;", "freopen_1385.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _chain -> _lock;", "freopen_1386.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _shortbuf;", "freopen_1387.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_buf_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2 -> _lock;", "freopen_1388.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_read_ptr;", "freopen_1389.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_read_end;", "freopen_1390.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_read_base;", "freopen_1391.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_write_base;", "freopen_1392.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_write_ptr;", "freopen_1393.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_write_end;", "freopen_1394.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_buf_base;", "freopen_1395.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_buf_end;", "freopen_1396.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_save_base;", "freopen_1397.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_backup_base;", "freopen_1398.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _IO_save_end;", "freopen_1399.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1400.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1401.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1402.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1403.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1404.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1405.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1406.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1407.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1408.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1409.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1410.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1411.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1412.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_1413.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_read_end;", "freopen_1414.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_read_base;", "freopen_1415.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_write_base;", "freopen_1416.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_1417.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_write_end;", "freopen_1418.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_buf_base;", "freopen_1419.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_buf_end;", "freopen_1420.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_save_base;", "freopen_1421.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_backup_base;", "freopen_1422.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _IO_save_end;", "freopen_1423.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _shortbuf;", "freopen_1424.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _chain -> _lock;", "freopen_1425.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _shortbuf;", "freopen_1426.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2 -> _lock;", "freopen_1427.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_read_ptr;", "freopen_1428.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_read_end;", "freopen_1429.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_read_base;", "freopen_1430.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_write_base;", "freopen_1431.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_write_ptr;", "freopen_1432.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_write_end;", "freopen_1433.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_buf_base;", "freopen_1434.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_buf_end;", "freopen_1435.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_save_base;", "freopen_1436.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_backup_base;", "freopen_1437.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _IO_save_end;", "freopen_1438.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1439.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1440.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1441.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1442.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1443.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1444.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1445.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1446.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1447.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1448.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1449.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1450.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1451.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_read_ptr;", "freopen_1452.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_read_end;", "freopen_1453.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_read_base;", "freopen_1454.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_write_base;", "freopen_1455.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_write_ptr;", "freopen_1456.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_write_end;", "freopen_1457.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_buf_base;", "freopen_1458.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_buf_end;", "freopen_1459.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_save_base;", "freopen_1460.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_backup_base;", "freopen_1461.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _IO_save_end;", "freopen_1462.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _shortbuf;", "freopen_1463.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _chain -> _lock;", "freopen_1464.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _shortbuf;", "freopen_1465.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_backup_base == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2 -> _lock;", "freopen_1466.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_read_ptr;", "freopen_1467.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_read_end;", "freopen_1468.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_read_base;", "freopen_1469.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_write_base;", "freopen_1470.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_write_ptr;", "freopen_1471.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_write_end;", "freopen_1472.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_buf_base;", "freopen_1473.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_buf_end;", "freopen_1474.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_save_base;", "freopen_1475.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_backup_base;", "freopen_1476.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _IO_save_end;", "freopen_1477.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1478.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1479.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1480.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1481.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1482.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1483.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1484.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1485.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1486.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1487.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1488.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1489.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1490.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_read_ptr;", "freopen_1491.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_read_end;", "freopen_1492.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_read_base;", "freopen_1493.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_write_base;", "freopen_1494.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_write_ptr;", "freopen_1495.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_write_end;", "freopen_1496.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_buf_base;", "freopen_1497.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_buf_end;", "freopen_1498.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_save_base;", "freopen_1499.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_backup_base;", "freopen_1500.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _IO_save_end;", "freopen_1501.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _shortbuf;", "freopen_1502.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _IO_save_end == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _chain -> _lock;", "freopen_1503.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _shortbuf;", "freopen_1504.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _IO_save_end == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2 -> _lock;", "freopen_1505.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _markers == arg2 -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg2 -> _markers;", "freopen_1506.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _chain -> _markers == arg2 -> _markers -> _next)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg2 -> _markers -> _next;", "freopen_1507.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _markers == arg2 -> _markers -> _sbuf -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg2 -> _markers -> _sbuf -> _markers;", "freopen_1508.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _markers == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1509.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _markers == arg2 -> _chain -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg2 -> _chain -> _markers;", "freopen_1510.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _chain -> _markers == arg2 -> _chain -> _markers -> _next)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg2 -> _chain -> _markers -> _next;", "freopen_1511.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _markers == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg2 -> _chain -> _lock;", "freopen_1512.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _markers == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg2 -> _lock;", "freopen_1513.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && result -> _chain -> _markers -> _next == arg2 -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg2 -> _markers;", "freopen_1514.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _chain -> _markers -> _next == arg2 -> _markers -> _next)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg2 -> _markers -> _next;", "freopen_1515.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _markers -> _next == arg2 -> _markers -> _sbuf -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg2 -> _markers -> _sbuf -> _markers;", "freopen_1516.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _markers -> _next == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1517.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _markers -> _next == arg2 -> _chain -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg2 -> _chain -> _markers;", "freopen_1518.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _chain -> _markers -> _next == arg2 -> _chain -> _markers -> _next)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg2 -> _chain -> _markers -> _next;", "freopen_1519.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _markers -> _next == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg2 -> _chain -> _lock;", "freopen_1520.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && result -> _chain -> _markers -> _next == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg2 -> _lock;", "freopen_1521.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _chain -> _markers -> _sbuf == arg2 -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg2 -> _markers -> _sbuf;", "freopen_1522.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _markers -> _sbuf == arg2 -> _markers -> _sbuf -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg2 -> _markers -> _sbuf -> _chain;", "freopen_1523.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _markers -> _sbuf == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1524.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && result -> _chain -> _markers -> _sbuf == arg2 -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg2 -> _chain;", "freopen_1525.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _chain -> _markers -> _sbuf == arg2 -> _chain -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg2 -> _chain -> _markers -> _sbuf;", "freopen_1526.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _markers -> _sbuf == arg2 -> _chain -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg2 -> _chain -> _chain;", "freopen_1527.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _markers -> _sbuf == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg2 -> _chain -> _lock;", "freopen_1528.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && arg2 != NULL && result -> _chain -> _markers -> _sbuf == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg2 -> _lock;", "freopen_1529.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _chain -> _chain == arg2 -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg2 -> _markers -> _sbuf;", "freopen_1530.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _chain == arg2 -> _markers -> _sbuf -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg2 -> _markers -> _sbuf -> _chain;", "freopen_1531.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _chain == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1532.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _chain == arg2 -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg2 -> _chain;", "freopen_1533.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _chain -> _chain == arg2 -> _chain -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg2 -> _chain -> _markers -> _sbuf;", "freopen_1534.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _chain == arg2 -> _chain -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg2 -> _chain -> _chain;", "freopen_1535.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _chain == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg2 -> _chain -> _lock;", "freopen_1536.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _chain == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg2 -> _lock;", "freopen_1537.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_read_ptr;", "freopen_1538.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_read_end;", "freopen_1539.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_read_base;", "freopen_1540.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_write_base;", "freopen_1541.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_write_ptr;", "freopen_1542.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_write_end;", "freopen_1543.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_buf_base;", "freopen_1544.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_buf_end;", "freopen_1545.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_save_base;", "freopen_1546.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_backup_base;", "freopen_1547.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _IO_save_end;", "freopen_1548.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1549.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1550.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1551.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1552.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1553.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1554.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1555.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1556.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1557.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1558.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1559.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1560.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1561.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_read_ptr;", "freopen_1562.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_read_end;", "freopen_1563.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_read_base;", "freopen_1564.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_write_base;", "freopen_1565.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_write_ptr;", "freopen_1566.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_write_end;", "freopen_1567.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_buf_base;", "freopen_1568.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_buf_end;", "freopen_1569.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_save_base;", "freopen_1570.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_backup_base;", "freopen_1571.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _IO_save_end;", "freopen_1572.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _shortbuf;", "freopen_1573.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _shortbuf == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _chain -> _lock;", "freopen_1574.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _shortbuf;", "freopen_1575.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _shortbuf == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2 -> _lock;", "freopen_1576.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg2)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2;", "freopen_1577.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_read_ptr;", "freopen_1578.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_read_end;", "freopen_1579.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_read_base;", "freopen_1580.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_write_base;", "freopen_1581.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_write_ptr;", "freopen_1582.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_write_end;", "freopen_1583.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_buf_base;", "freopen_1584.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_buf_end;", "freopen_1585.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_save_base;", "freopen_1586.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_backup_base;", "freopen_1587.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _IO_save_end;", "freopen_1588.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers;", "freopen_1589.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _chain -> _lock == arg2 -> _markers -> _next)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _next;", "freopen_1590.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf;", "freopen_1591.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1592.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1593.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1594.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1595.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1596.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1597.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1598.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1599.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1600.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1601.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1602.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _markers;", "freopen_1603.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _chain;", "freopen_1604.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1605.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1606.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain;", "freopen_1607.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_read_ptr;", "freopen_1608.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_read_end;", "freopen_1609.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_read_base;", "freopen_1610.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_write_base;", "freopen_1611.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_write_ptr;", "freopen_1612.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_write_end;", "freopen_1613.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_buf_base;", "freopen_1614.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_buf_end;", "freopen_1615.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_save_base;", "freopen_1616.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_backup_base;", "freopen_1617.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _IO_save_end;", "freopen_1618.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _markers)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _markers;", "freopen_1619.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _chain -> _lock == arg2 -> _chain -> _markers -> _next)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _markers -> _next;", "freopen_1620.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _chain -> _lock == arg2 -> _chain -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _markers -> _sbuf;", "freopen_1621.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _chain)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _chain;", "freopen_1622.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _shortbuf;", "freopen_1623.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _chain -> _lock == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _chain -> _lock;", "freopen_1624.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _shortbuf;", "freopen_1625.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && arg2 != NULL && result -> _chain -> _lock == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2 -> _lock;", "freopen_1626.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_read_ptr;", "freopen_1627.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_read_end;", "freopen_1628.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_read_base;", "freopen_1629.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_write_base;", "freopen_1630.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_write_ptr;", "freopen_1631.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_write_end;", "freopen_1632.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_buf_base;", "freopen_1633.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_buf_end;", "freopen_1634.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_save_base;", "freopen_1635.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_backup_base;", "freopen_1636.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _IO_save_end;", "freopen_1637.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1638.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1639.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1640.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1641.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1642.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1643.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1644.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1645.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1646.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1647.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1648.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1649.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _shortbuf == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1650.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_read_ptr;", "freopen_1651.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_read_end;", "freopen_1652.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_read_base;", "freopen_1653.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_write_base;", "freopen_1654.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_write_ptr;", "freopen_1655.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_write_end;", "freopen_1656.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_buf_base;", "freopen_1657.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_buf_end;", "freopen_1658.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_save_base;", "freopen_1659.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_backup_base;", "freopen_1660.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _IO_save_end;", "freopen_1661.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _shortbuf;", "freopen_1662.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _shortbuf == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _chain -> _lock;", "freopen_1663.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _shortbuf;", "freopen_1664.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _shortbuf == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _shortbuf == arg2 -> _lock;", "freopen_1665.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg2)
		{
			SpecFileGeneration("result -> _lock == arg2;", "freopen_1666.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_read_ptr;", "freopen_1667.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_read_end;", "freopen_1668.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_read_base;", "freopen_1669.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_write_base;", "freopen_1670.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_write_ptr;", "freopen_1671.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_write_end;", "freopen_1672.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_buf_base;", "freopen_1673.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_buf_end;", "freopen_1674.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_save_base;", "freopen_1675.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_backup_base;", "freopen_1676.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _IO_save_end;", "freopen_1677.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _markers)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers;", "freopen_1678.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _lock == arg2 -> _markers -> _next)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _next;", "freopen_1679.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && result -> _lock == arg2 -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf;", "freopen_1680.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1681.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1682.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1683.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1684.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1685.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1686.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1687.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1688.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1689.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1690.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1691.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _markers)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _markers;", "freopen_1692.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _chain)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _chain;", "freopen_1693.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1694.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && result -> _lock == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1695.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _chain)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain;", "freopen_1696.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_read_ptr;", "freopen_1697.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_read_end;", "freopen_1698.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_read_base;", "freopen_1699.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_write_base;", "freopen_1700.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_write_ptr;", "freopen_1701.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_write_end;", "freopen_1702.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_buf_base;", "freopen_1703.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_buf_end;", "freopen_1704.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_save_base;", "freopen_1705.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_backup_base;", "freopen_1706.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _IO_save_end;", "freopen_1707.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _markers)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _markers;", "freopen_1708.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _lock == arg2 -> _chain -> _markers -> _next)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _markers -> _next;", "freopen_1709.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && arg2 -> _chain -> _markers != NULL && result -> _lock == arg2 -> _chain -> _markers -> _sbuf)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _markers -> _sbuf;", "freopen_1710.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _chain)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _chain;", "freopen_1711.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _shortbuf;", "freopen_1712.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && arg2 -> _chain != NULL && result -> _lock == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _chain -> _lock;", "freopen_1713.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _shortbuf)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _shortbuf;", "freopen_1714.cpp", funSignature);
		}
		if(result != NULL && arg2 != NULL && result -> _lock == arg2 -> _lock)
		{
			SpecFileGeneration("result -> _lock == arg2 -> _lock;", "freopen_1715.cpp", funSignature);
		}
		if(arg0 == arg1)
		{
			SpecFileGeneration("arg0 == arg1;", "freopen_1716.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_ptr;", "freopen_1717.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_end;", "freopen_1718.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_read_base;", "freopen_1719.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_base;", "freopen_1720.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_ptr;", "freopen_1721.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_write_end;", "freopen_1722.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_buf_base;", "freopen_1723.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_buf_end;", "freopen_1724.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_save_base;", "freopen_1725.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_backup_base;", "freopen_1726.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _IO_save_end;", "freopen_1727.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1728.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1729.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1730.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1731.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1732.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1733.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1734.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1735.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1736.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1737.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1738.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1739.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg0 == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1740.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_ptr;", "freopen_1741.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_end;", "freopen_1742.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_read_base;", "freopen_1743.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_base;", "freopen_1744.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_ptr;", "freopen_1745.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_write_end;", "freopen_1746.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_buf_base;", "freopen_1747.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_buf_end;", "freopen_1748.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_save_base;", "freopen_1749.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_backup_base;", "freopen_1750.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _IO_save_end;", "freopen_1751.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _shortbuf;", "freopen_1752.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg0 == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _chain -> _lock;", "freopen_1753.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _shortbuf)
		{
			SpecFileGeneration("arg0 == arg2 -> _shortbuf;", "freopen_1754.cpp", funSignature);
		}
		if(arg2 != NULL && arg0 == arg2 -> _lock)
		{
			SpecFileGeneration("arg0 == arg2 -> _lock;", "freopen_1755.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_read_ptr)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_read_ptr;", "freopen_1756.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_read_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_read_end;", "freopen_1757.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_read_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_read_base;", "freopen_1758.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_write_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_write_base;", "freopen_1759.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_write_ptr)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_write_ptr;", "freopen_1760.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_write_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_write_end;", "freopen_1761.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_buf_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_buf_base;", "freopen_1762.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_buf_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_buf_end;", "freopen_1763.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_save_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_save_base;", "freopen_1764.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_backup_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_backup_base;", "freopen_1765.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _IO_save_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _IO_save_end;", "freopen_1766.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_read_ptr)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_read_ptr;", "freopen_1767.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_read_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_read_end;", "freopen_1768.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_read_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_read_base;", "freopen_1769.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_write_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_write_base;", "freopen_1770.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_write_ptr)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_write_ptr;", "freopen_1771.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_write_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_write_end;", "freopen_1772.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_buf_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_buf_base;", "freopen_1773.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_buf_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_buf_end;", "freopen_1774.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_save_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_save_base;", "freopen_1775.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_backup_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_backup_base;", "freopen_1776.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _IO_save_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _IO_save_end;", "freopen_1777.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _shortbuf)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _shortbuf;", "freopen_1778.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _markers != NULL && arg2 -> _markers -> _sbuf != NULL && arg1 == arg2 -> _markers -> _sbuf -> _lock)
		{
			SpecFileGeneration("arg1 == arg2 -> _markers -> _sbuf -> _lock;", "freopen_1779.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_read_ptr)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_read_ptr;", "freopen_1780.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_read_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_read_end;", "freopen_1781.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_read_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_read_base;", "freopen_1782.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_write_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_write_base;", "freopen_1783.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_write_ptr)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_write_ptr;", "freopen_1784.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_write_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_write_end;", "freopen_1785.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_buf_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_buf_base;", "freopen_1786.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_buf_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_buf_end;", "freopen_1787.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_save_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_save_base;", "freopen_1788.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_backup_base)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_backup_base;", "freopen_1789.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _IO_save_end)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _IO_save_end;", "freopen_1790.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _shortbuf)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _shortbuf;", "freopen_1791.cpp", funSignature);
		}
		if(arg2 != NULL && arg2 -> _chain != NULL && arg1 == arg2 -> _chain -> _lock)
		{
			SpecFileGeneration("arg1 == arg2 -> _chain -> _lock;", "freopen_1792.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _shortbuf)
		{
			SpecFileGeneration("arg1 == arg2 -> _shortbuf;", "freopen_1793.cpp", funSignature);
		}
		if(arg2 != NULL && arg1 == arg2 -> _lock)
		{
			SpecFileGeneration("arg1 == arg2 -> _lock;", "freopen_1794.cpp", funSignature);
		}
	}

	return 0;
}
