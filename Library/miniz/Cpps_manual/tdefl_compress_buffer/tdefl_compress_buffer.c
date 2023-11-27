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

// 输出函数 - 将压缩数据写入文件或其他媒介
static mz_bool put_buf_callback(const void *pBuf, int len, void *pUser) {
    FILE *file = (FILE *)pUser;
    size_t written = fwrite(pBuf, 1, len, file);
    return written == len ? MZ_TRUE : MZ_FALSE;
}

int main() {

    char buf[1024];
	while (__AFL_LOOP(1000)) 
	{
		memset(buf, 0, sizeof(buf));
		if (read(0, buf, sizeof(buf)) < 0) {
			return 1;
		}

		// const char *pSrc_buf = strtok(buf, "\n");
		const char *input_data = strtok(buf, "\n");
		size_t input_size = strlen(input_data);

		// 打开文件用于写入压缩数据
		FILE *output_file = fopen("/home/kansx/Fuzz/APISpecFuzz/Library/miniz/random1.dat", "wb");
		if (!output_file) {
			fprintf(stderr, "无法打开文件进行写入。\n");
			return 1;
		}



		// Initialize the compressor
		tdefl_compressor compressor;
		if (tdefl_init(&compressor, put_buf_callback, output_file, TDEFL_DEFAULT_MAX_PROBES) != TDEFL_STATUS_OKAY) {
			fprintf(stderr, "Failed to initialize compressor.\n");
			return 1;
		}

		// Compress the data
		tdefl_status status = tdefl_compress_buffer(&compressor, input_data, input_size, TDEFL_FINISH);

		const char *funSignature = "MINIZ_EXPORT tdefl_status tdefl_compress_buffer(tdefl_compressor *d, const void *pIn_buf, size_t in_buf_size, tdefl_flush flush)";
		
		if(compressor.m_pPut_buf_user == input_data)
		{
			SpecFileGeneration("d->m_pPut_buf_user == pIn_buf;", "tdefl_compress_buffer_0.cpp", funSignature);
		}
		if(compressor.m_pIn_buf == input_data)
		{
			SpecFileGeneration("d->m_pIn_buf == pIn_buf;", "tdefl_compress_buffer_1.cpp", funSignature);
		}
		if(compressor.m_pOut_buf == input_data)
		{
			SpecFileGeneration("d->m_pOut_buf == pIn_buf;", "tdefl_compress_buffer_2.cpp", funSignature);
		}
    }

    return 0;
}
