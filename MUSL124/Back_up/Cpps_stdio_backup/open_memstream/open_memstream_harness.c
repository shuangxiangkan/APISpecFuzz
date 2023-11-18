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

		char **arg0 = strtok(buf, "\n");
		unsigned long *arg1;
		sscanf(strtok(NULL, "\n"), "%lu", &arg1);

	
		FILE* result = open_memstream(arg0, arg1);
		const char *funSignature = "FILE* open_memstream(char** arg1, size_t* arg0)";
		
		if(result != NULL && result -> _IO_read_ptr == *arg0)
		{
			SpecFileGeneration("result -> _IO_read_ptr == *arg0;", "open_memstream_0.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_end == *arg0)
		{
			SpecFileGeneration("result -> _IO_read_end == *arg0;", "open_memstream_1.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_read_base == *arg0)
		{
			SpecFileGeneration("result -> _IO_read_base == *arg0;", "open_memstream_2.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_base == *arg0)
		{
			SpecFileGeneration("result -> _IO_write_base == *arg0;", "open_memstream_3.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_ptr == *arg0)
		{
			SpecFileGeneration("result -> _IO_write_ptr == *arg0;", "open_memstream_4.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_write_end == *arg0)
		{
			SpecFileGeneration("result -> _IO_write_end == *arg0;", "open_memstream_5.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_base == *arg0)
		{
			SpecFileGeneration("result -> _IO_buf_base == *arg0;", "open_memstream_6.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_buf_end == *arg0)
		{
			SpecFileGeneration("result -> _IO_buf_end == *arg0;", "open_memstream_7.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_base == *arg0)
		{
			SpecFileGeneration("result -> _IO_save_base == *arg0;", "open_memstream_8.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_backup_base == *arg0)
		{
			SpecFileGeneration("result -> _IO_backup_base == *arg0;", "open_memstream_9.cpp", funSignature);
		}
		if(result != NULL && result -> _IO_save_end == *arg0)
		{
			SpecFileGeneration("result -> _IO_save_end == *arg0;", "open_memstream_10.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_ptr == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_ptr == *arg0;", "open_memstream_11.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_end == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_end == *arg0;", "open_memstream_12.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_read_base == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_read_base == *arg0;", "open_memstream_13.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_base == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_base == *arg0;", "open_memstream_14.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_ptr == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_ptr == *arg0;", "open_memstream_15.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_write_end == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_write_end == *arg0;", "open_memstream_16.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_base == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_base == *arg0;", "open_memstream_17.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_buf_end == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_buf_end == *arg0;", "open_memstream_18.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_base == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_base == *arg0;", "open_memstream_19.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_backup_base == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_backup_base == *arg0;", "open_memstream_20.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _IO_save_end == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _IO_save_end == *arg0;", "open_memstream_21.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _shortbuf == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _shortbuf == *arg0;", "open_memstream_22.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == *arg0)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == *arg0;", "open_memstream_23.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_ptr == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_ptr == *arg0;", "open_memstream_24.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_end == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_end == *arg0;", "open_memstream_25.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_read_base == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_read_base == *arg0;", "open_memstream_26.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_base == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_base == *arg0;", "open_memstream_27.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_ptr == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_ptr == *arg0;", "open_memstream_28.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_write_end == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_write_end == *arg0;", "open_memstream_29.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_base == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_base == *arg0;", "open_memstream_30.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_buf_end == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_buf_end == *arg0;", "open_memstream_31.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_base == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_base == *arg0;", "open_memstream_32.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_backup_base == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_backup_base == *arg0;", "open_memstream_33.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _IO_save_end == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _IO_save_end == *arg0;", "open_memstream_34.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _shortbuf == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _shortbuf == *arg0;", "open_memstream_35.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == *arg0)
		{
			SpecFileGeneration("result -> _chain -> _lock == *arg0;", "open_memstream_36.cpp", funSignature);
		}
		if(result != NULL && result -> _shortbuf == *arg0)
		{
			SpecFileGeneration("result -> _shortbuf == *arg0;", "open_memstream_37.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == *arg0)
		{
			SpecFileGeneration("result -> _lock == *arg0;", "open_memstream_38.cpp", funSignature);
		}
		if(result != NULL && result -> _markers != NULL && result -> _markers -> _sbuf != NULL && result -> _markers -> _sbuf -> _lock == arg1)
		{
			SpecFileGeneration("result -> _markers -> _sbuf -> _lock == arg1;", "open_memstream_39.cpp", funSignature);
		}
		if(result != NULL && result -> _chain != NULL && result -> _chain -> _lock == arg1)
		{
			SpecFileGeneration("result -> _chain -> _lock == arg1;", "open_memstream_40.cpp", funSignature);
		}
		if(result != NULL && result -> _lock == arg1)
		{
			SpecFileGeneration("result -> _lock == arg1;", "open_memstream_41.cpp", funSignature);
		}
	}

	return 0;
}
