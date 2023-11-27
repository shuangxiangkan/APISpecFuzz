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
		const char *pSrc_buf = strtok(buf, "\n");
		size_t src_buf_len = strlen(pSrc_buf);

		// Variable to hold the length of the compressed data
		size_t pOut_len = 0;

		// Compress the source data to a new heap-allocated buffer
		void *compressed_data = tdefl_compress_mem_to_heap(pSrc_buf, src_buf_len, &pOut_len, TDEFL_DEFAULT_MAX_PROBES);

		const char *funSignature = "MINIZ_EXPORT void *tdefl_compress_mem_to_heap(const void *pSrc_buf, size_t src_buf_len, size_t *pOut_len, int flags))";
		
		if(compressed_data == pSrc_buf)
		{
			SpecFileGeneration("return pSrc_buf;", "tdefl_compress_mem_to_heap_0.cpp", funSignature);
		}
		if(src_buf_len == pOut_len)
		{
			SpecFileGeneration("src_buf_len = *pOut_len;", "tdefl_compress_mem_to_heap_1.cpp", funSignature);
		}

		
		free(compressed_data);
    }

    return 0;
}
