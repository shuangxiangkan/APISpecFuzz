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

    char pIn_buf_next[4096];
	while (__AFL_LOOP(1000)) 
	{
		memset(pIn_buf_next, 0, sizeof(pIn_buf_next));
		if (read(0, pIn_buf_next, sizeof(pIn_buf_next)) < 0) {
			return 1;
		}

		tinfl_decompressor r;
    	tinfl_init(&r);

		size_t pIn_buf_size = sizeof(pIn_buf_next);

		mz_uint8 pOut_buf_start[4096];
		size_t pOut_buf_size = sizeof(pOut_buf_start);

		// 假设我们已经向缓冲区写入了一些数据，并想从中间开始写入新的解压数据
		mz_uint8 *pOut_buf_next = pOut_buf_start + 2048; // 假设从缓冲区的一半开始写入

		// 解压数据
		tinfl_status status = tinfl_decompress(&r, pIn_buf_next, &pIn_buf_size, 
											pOut_buf_start, pOut_buf_next, &pOut_buf_size, 
											TINFL_FLAG_PARSE_ZLIB_HEADER);


    
		const char *funSignature = "MINIZ_EXPORT tinfl_status tinfl_decompress(tinfl_decompressor *r, const mz_uint8 *pIn_buf_next, size_t *pIn_buf_size, mz_uint8 *pOut_buf_start, mz_uint8 *pOut_buf_next, size_t *pOut_buf_size, const mz_uint32 decomp_flags)";
		
		if (pIn_buf_next == pOut_buf_start)
		{
			SpecFileGeneration("pIn_buf_next = pOut_buf_start;", "tinfl_decompress_0.cpp", funSignature);
		}
		if (pIn_buf_size == pOut_buf_size)
		{
			SpecFileGeneration("pIn_buf_size = pOut_buf_size;", "tinfl_decompress_1.cpp", funSignature);
		}
		if (pOut_buf_next == pOut_buf_start)
		{
			SpecFileGeneration("pOut_buf_next = pOut_buf_start;", "tinfl_decompress_2.cpp", funSignature);
		}
		if (pIn_buf_next == pOut_buf_start)
		{
			SpecFileGeneration("pIn_buf_next = pOut_buf_start;", "tinfl_decompress_3.cpp", funSignature);
		}
		if (pIn_buf_size == pOut_buf_next)
		{
			SpecFileGeneration("pIn_buf_size = pOut_buf_next;", "tinfl_decompress_4.cpp", funSignature);
		}


    }

    return 0;
}
