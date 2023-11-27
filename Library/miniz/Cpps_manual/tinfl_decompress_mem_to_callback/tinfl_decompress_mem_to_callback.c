#include <stdio.h>
#include <string.h>
#include "miniz.h"

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

static mz_bool decompressed_data_callback(const void *pBuf, int len, void *pUser) {
    // Here you can write the decompressed data (pBuf) of length (len) to a file, buffer, etc.
    // pUser can be used to pass a file handle, a buffer, or any other user-defined data
    fwrite(pBuf, 1, len, (FILE *)pUser);
    return MZ_TRUE;
}

int main() {

    char buf[1024];
	while (__AFL_LOOP(1000)) 
	{
		memset(buf, 0, sizeof(buf));
		if (read(0, buf, sizeof(buf)) < 0) {
			return 1;
		}

		// char *s_pStr = strtok(buf, "\n");

		// Example source data to compress
		// const unsigned char compressed_data[] = strtok(buf, "\n");
		size_t compressed_data_size = sizeof(buf);

		// Open a file to write the decompressed data
		FILE *outfile = fopen("decompressed_output.txt", "wb");
		if (!outfile) {
			fprintf(stderr, "Failed to open output file.\n");
			return 1;
		}

		// Decompress data
		int status = tinfl_decompress_mem_to_callback(buf, &compressed_data_size, decompressed_data_callback, outfile, 0);

    
		const char *funSignature = "MINIZ_EXPORT int tinfl_decompress_mem_to_callback(const void *pIn_buf, size_t *pIn_buf_size, tinfl_put_buf_func_ptr pPut_buf_func, void *pPut_buf_user, int flags)";
		
		if(buf == outfile)
		{
			SpecFileGeneration("pIn_buf = pPut_buf_user;", "tinfl_decompress_mem_to_callback_0.cpp", funSignature);
		}

		
		fclose(outfile);
    }

    return 0;
}
