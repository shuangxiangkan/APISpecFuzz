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

		// Allocate an output buffer (ensure it is large enough)
		size_t out_buf_len = src_buf_len + 128; // Larger than source to accommodate compression metadata
		void *pOut_buf = malloc(out_buf_len);
		if (!pOut_buf) {
			fprintf(stderr, "Failed to allocate memory for output buffer!\n");
			return 1;
		}

		// Compress the data
		size_t compressed_size = tdefl_compress_mem_to_mem(pOut_buf, out_buf_len, pSrc_buf, src_buf_len, TDEFL_DEFAULT_MAX_PROBES);

		const char *funSignature = "MINIZ_EXPORT size_t tdefl_compress_mem_to_mem(void *pOut_buf, size_t out_buf_len, const void *pSrc_buf, size_t src_buf_len, int flags)";
		
		if(pOut_buf == pSrc_buf)
		{
			SpecFileGeneration("pOut_buf == pSrc_buf;", "tdefl_compress_mem_to_mem_0.cpp", funSignature);
		}

		
		free(pOut_buf);
    }

    return 0;
}
