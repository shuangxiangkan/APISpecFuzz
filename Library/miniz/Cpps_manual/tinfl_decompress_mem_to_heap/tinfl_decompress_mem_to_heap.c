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

		// Variable to hold the length of the decompressed data
		size_t decompressed_data_len = 0;

		// Decompress the data
		void *decompressed_data = tinfl_decompress_mem_to_heap(buf, compressed_data_size, &decompressed_data_len, 0);
		const char *funSignature = "MINIZ_EXPORT void *tinfl_decompress_mem_to_heap(const void *pSrc_buf, size_t src_buf_len, size_t *pOut_len, int flags)";
		
		if(decompressed_data == buf)
		{
			SpecFileGeneration("return pSrc_buf;", "tinfl_decompress_mem_to_heap_0.cpp", funSignature);
		}
		if(compressed_data_size == decompressed_data_len)
		{
			SpecFileGeneration("src_buf_len = *pOut_len;", "tinfl_decompress_mem_to_heap_1.cpp", funSignature);
		}

		
		free(decompressed_data);
    }

    return 0;
}
