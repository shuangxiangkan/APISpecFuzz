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
	
		FILE* result = fopen("/home/kansx/Fuzz/APISpecFuzz/MUSL124/C_stdio/file.txt" , "w+");
		const char *funSignature = "FILE* fopen(char* arg0, char* arg0)";
		
		if(result != NULL && result -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg0;", "fopen_0.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _IO_read_end == arg0;", "fopen_1.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _IO_read_base == arg0;", "fopen_2.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _IO_write_base == arg0;", "fopen_3.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg0;", "fopen_4.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _IO_write_end == arg0;", "fopen_5.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg0;", "fopen_6.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg0;", "fopen_7.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _IO_save_base == arg0;", "fopen_8.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg0;", "fopen_9.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _IO_save_end == arg0;", "fopen_10.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg0;", "fopen_11.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg0;", "fopen_12.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg0;", "fopen_13.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg0;", "fopen_14.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg0;", "fopen_15.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg0;", "fopen_16.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg0;", "fopen_17.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg0;", "fopen_18.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg0;", "fopen_19.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg0;", "fopen_20.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg0;", "fopen_21.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg0;", "fopen_22.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg0;", "fopen_23.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg0;", "fopen_24.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg0;", "fopen_25.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg0;", "fopen_26.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg0;", "fopen_27.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg0;", "fopen_28.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg0;", "fopen_29.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg0;", "fopen_30.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg0;", "fopen_31.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg0;", "fopen_32.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg0;", "fopen_33.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg0;", "fopen_34.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg0;", "fopen_35.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg0)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg0;", "fopen_36.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _shortbuf == arg0;", "fopen_37.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg0)
		{
			SpecFileGeneration("result -> _lock == arg0;", "fopen_38.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg1;", "fopen_39.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _IO_read_end == arg1;", "fopen_40.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _IO_read_base == arg1;", "fopen_41.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _IO_write_base == arg1;", "fopen_42.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg1;", "fopen_43.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _IO_write_end == arg1;", "fopen_44.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg1;", "fopen_45.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg1;", "fopen_46.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _IO_save_base == arg1;", "fopen_47.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg1;", "fopen_48.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _IO_save_end == arg1;", "fopen_49.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg1;", "fopen_50.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg1;", "fopen_51.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg1;", "fopen_52.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg1;", "fopen_53.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg1;", "fopen_54.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg1;", "fopen_55.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg1;", "fopen_56.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg1;", "fopen_57.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg1;", "fopen_58.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg1;", "fopen_59.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg1;", "fopen_60.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg1;", "fopen_61.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg1;", "fopen_62.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg1;", "fopen_63.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg1;", "fopen_64.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg1;", "fopen_65.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg1;", "fopen_66.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg1;", "fopen_67.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg1;", "fopen_68.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg1;", "fopen_69.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg1;", "fopen_70.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg1;", "fopen_71.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg1;", "fopen_72.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg1;", "fopen_73.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg1;", "fopen_74.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg1)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg1;", "fopen_75.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _shortbuf == arg1;", "fopen_76.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg1)
		{
			SpecFileGeneration("result -> _lock == arg1;", "fopen_77.cpp", funSignature);
		}
		if(arg0 == arg1)
		{
			SpecFileGeneration("arg0 == arg1;", "fopen_78.cpp", funSignature);
		}
	}

	return 0;
}
