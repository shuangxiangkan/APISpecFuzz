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
//		void *arg0 = strtok(buf, "\n");
//		unsigned long arg1;
//		sscanf(strtok(NULL, "\n"), "%lu", &arg1);
//
//		char *arg2 = strtok(NULL, "\n");
//
        char buffer[1024] = {0};
		FILE* result = fmemopen(buffer, sizeof(buffer), "w");
		const char *funSignature = "FILE* fmemopen(void* arg0, size_t arg1, char* arg0)";
		
		if(result == arg0)
		{
			SpecFileGeneration("return arg0;", "fmemopen_0.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg0;", "fmemopen_1.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _IO_read_end == arg0;", "fmemopen_2.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _IO_read_base == arg0;", "fmemopen_3.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _IO_write_base == arg0;", "fmemopen_4.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg0;", "fmemopen_5.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _IO_write_end == arg0;", "fmemopen_6.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg0;", "fmemopen_7.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg0;", "fmemopen_8.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _IO_save_base == arg0;", "fmemopen_9.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg0;", "fmemopen_10.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _IO_save_end == arg0;", "fmemopen_11.cpp", funSignature);
		}
		if(result != NULL && result -> _markers == arg0)
		{
			SpecFileGeneration("result -> _markers == arg0;", "fmemopen_12.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _next == arg0)
		{
			SpecFileGeneration("result -> _markers -> _next == arg0;", "fmemopen_13.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf == arg0;", "fmemopen_14.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg0;", "fmemopen_15.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg0;", "fmemopen_16.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg0;", "fmemopen_17.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg0;", "fmemopen_18.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg0;", "fmemopen_19.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg0;", "fmemopen_20.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg0;", "fmemopen_21.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg0;", "fmemopen_22.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg0;", "fmemopen_23.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg0;", "fmemopen_24.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg0;", "fmemopen_25.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _markers == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _markers == arg0;", "fmemopen_26.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _chain == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _chain == arg0;", "fmemopen_27.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg0;", "fmemopen_28.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg0;", "fmemopen_29.cpp", funSignature);
		}
		if(result != NULL && result -> _chain == arg0)
		{
			SpecFileGeneration("result -> _chain == arg0;", "fmemopen_30.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg0;", "fmemopen_31.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg0;", "fmemopen_32.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg0;", "fmemopen_33.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg0;", "fmemopen_34.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg0;", "fmemopen_35.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg0;", "fmemopen_36.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg0;", "fmemopen_37.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg0;", "fmemopen_38.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg0;", "fmemopen_39.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg0;", "fmemopen_40.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg0;", "fmemopen_41.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers == arg0)
		{
			SpecFileGeneration("result -> _chain -> _markers == arg0;", "fmemopen_42.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && result -> _chain -> _markers -> _next == arg0)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _next == arg0;", "fmemopen_43.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _markers != NULL && result -> _chain -> _markers -> _sbuf == arg0)
		{
			SpecFileGeneration("result -> _chain -> _markers -> _sbuf == arg0;", "fmemopen_44.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _chain == arg0)
		{
			SpecFileGeneration("result -> _chain -> _chain == arg0;", "fmemopen_45.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg0;", "fmemopen_46.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg0)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg0;", "fmemopen_47.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg0)
		{
			SpecFileGeneration("result -> _shortbuf == arg0;", "fmemopen_48.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg0)
		{
			SpecFileGeneration("result -> _lock == arg0;", "fmemopen_49.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_ptr == arg2)
		{
			SpecFileGeneration("result -> _IO_read_ptr == arg2;", "fmemopen_50.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == arg2)
		{
			SpecFileGeneration("result -> _IO_read_end == arg2;", "fmemopen_51.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == arg2)
		{
			SpecFileGeneration("result -> _IO_read_base == arg2;", "fmemopen_52.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == arg2)
		{
			SpecFileGeneration("result -> _IO_write_base == arg2;", "fmemopen_53.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == arg2)
		{
			SpecFileGeneration("result -> _IO_write_ptr == arg2;", "fmemopen_54.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == arg2)
		{
			SpecFileGeneration("result -> _IO_write_end == arg2;", "fmemopen_55.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == arg2)
		{
			SpecFileGeneration("result -> _IO_buf_base == arg2;", "fmemopen_56.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == arg2)
		{
			SpecFileGeneration("result -> _IO_buf_end == arg2;", "fmemopen_57.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == arg2)
		{
			SpecFileGeneration("result -> _IO_save_base == arg2;", "fmemopen_58.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == arg2)
		{
			SpecFileGeneration("result -> _IO_backup_base == arg2;", "fmemopen_59.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == arg2)
		{
			SpecFileGeneration("result -> _IO_save_end == arg2;", "fmemopen_60.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == arg2;", "fmemopen_61.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == arg2;", "fmemopen_62.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == arg2;", "fmemopen_63.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == arg2;", "fmemopen_64.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == arg2;", "fmemopen_65.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == arg2;", "fmemopen_66.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == arg2;", "fmemopen_67.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == arg2;", "fmemopen_68.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == arg2;", "fmemopen_69.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == arg2;", "fmemopen_70.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == arg2;", "fmemopen_71.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == arg2;", "fmemopen_72.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg2)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg2;", "fmemopen_73.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == arg2;", "fmemopen_74.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == arg2;", "fmemopen_75.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == arg2;", "fmemopen_76.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == arg2;", "fmemopen_77.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == arg2;", "fmemopen_78.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == arg2;", "fmemopen_79.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == arg2;", "fmemopen_80.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == arg2;", "fmemopen_81.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == arg2;", "fmemopen_82.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == arg2;", "fmemopen_83.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == arg2)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == arg2;", "fmemopen_84.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == arg2)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == arg2;", "fmemopen_85.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg2)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg2;", "fmemopen_86.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == arg2)
		{
			SpecFileGeneration("result -> _shortbuf == arg2;", "fmemopen_87.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg2)
		{
			SpecFileGeneration("result -> _lock == arg2;", "fmemopen_88.cpp", funSignature);
		}
		if(arg0 == arg2)
		{
			SpecFileGeneration("arg0 == arg2;", "fmemopen_89.cpp", funSignature);
		}
	}

	return 0;
}
