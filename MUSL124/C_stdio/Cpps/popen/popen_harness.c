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
		char *arg1 = strtok(NULL, "\n");
	
		FILE* result = popen(arg0, arg1);
		const char *funSignature = "FILE* popen(char* arg0, char* arg0)";
		
		if(result != NULL && result -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg0;", "popen_0.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _IO_read_end == arg0;", "popen_1.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _IO_read_base == arg0;", "popen_2.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _IO_write_base == arg0;", "popen_3.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg0;", "popen_4.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _IO_write_end == arg0;", "popen_5.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg0;", "popen_6.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg0;", "popen_7.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _IO_save_base == arg0;", "popen_8.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg0;", "popen_9.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _IO_save_end == arg0;", "popen_10.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg0;", "popen_11.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg0;", "popen_12.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg0;", "popen_13.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg0;", "popen_14.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg0;", "popen_15.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg0;", "popen_16.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg0;", "popen_17.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg0;", "popen_18.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg0;", "popen_19.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg0;", "popen_20.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg0;", "popen_21.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg0;", "popen_22.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg0;", "popen_23.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg0;", "popen_24.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg0;", "popen_25.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg0;", "popen_26.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg0;", "popen_27.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg0;", "popen_28.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg0;", "popen_29.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg0;", "popen_30.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg0;", "popen_31.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg0;", "popen_32.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg0;", "popen_33.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg0;", "popen_34.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg0;", "popen_35.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg0)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg0;", "popen_36.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _shortbuf == arg0;", "popen_37.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg0)
		{
			SpecFileGeneration("result -> _lock == arg0;", "popen_38.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg1;", "popen_39.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _IO_read_end == arg1;", "popen_40.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _IO_read_base == arg1;", "popen_41.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _IO_write_base == arg1;", "popen_42.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg1;", "popen_43.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _IO_write_end == arg1;", "popen_44.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg1;", "popen_45.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg1;", "popen_46.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _IO_save_base == arg1;", "popen_47.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg1;", "popen_48.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _IO_save_end == arg1;", "popen_49.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg1;", "popen_50.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg1;", "popen_51.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg1;", "popen_52.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg1;", "popen_53.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg1;", "popen_54.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg1;", "popen_55.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg1;", "popen_56.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg1;", "popen_57.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg1;", "popen_58.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg1;", "popen_59.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg1;", "popen_60.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg1;", "popen_61.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg1;", "popen_62.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg1;", "popen_63.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg1;", "popen_64.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg1;", "popen_65.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg1;", "popen_66.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg1;", "popen_67.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg1;", "popen_68.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg1;", "popen_69.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg1;", "popen_70.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg1;", "popen_71.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg1;", "popen_72.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg1)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg1;", "popen_73.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg1;", "popen_74.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg1)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg1;", "popen_75.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg1)
		{
			SpecFileGeneration("result -> _shortbuf == arg1;", "popen_76.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg1)
		{
			SpecFileGeneration("result -> _lock == arg1;", "popen_77.cpp", funSignature);
		}
		if(arg0 == arg1)
		{
			SpecFileGeneration("arg0 == arg1;", "popen_78.cpp", funSignature);
		}
	}

	return 0;
}
