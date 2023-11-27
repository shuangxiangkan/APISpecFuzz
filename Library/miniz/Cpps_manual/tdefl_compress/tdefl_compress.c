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

		// const char *pSrc_buf = strtok(buf, "\n");
		const char *input_data = strtok(buf, "\n");
		size_t input_size = strlen(input_data);

		// 准备输出缓冲区（大小应该足够大以容纳压缩后的数据）
		char output_buffer[1024]; // 假设压缩后的数据不会超过 1024 字节
		size_t output_buffer_size = sizeof(output_buffer);

		// 初始化压缩器对象
		tdefl_compressor compressor;
		tdefl_status status = tdefl_init(&compressor, NULL, NULL, TDEFL_DEFAULT_MAX_PROBES);

		if (status != TDEFL_STATUS_OKAY) {
			fprintf(stderr, "压缩器初始化失败。\n");
			return 1;
		}

		// 进行压缩
		size_t in_bytes = input_size;
		size_t out_bytes = output_buffer_size;
		status = tdefl_compress(&compressor, input_data, &in_bytes, output_buffer, &out_bytes, TDEFL_FINISH);

		const char *funSignature = "MINIZ_EXPORT tdefl_status tdefl_compress(tdefl_compressor *d, const void *pIn_buf, size_t *pIn_buf_size, void *pOut_buf, size_t *pOut_buf_size, tdefl_flush flush)";
		
		if(input_data == output_buffer)
		{
			SpecFileGeneration("pIn_buf == pOut_buf;", "tdefl_compress_0.cpp", funSignature);
		}
		if(in_bytes == out_bytes)
		{
			SpecFileGeneration("pIn_buf_size = pOut_buf_size;", "tdefl_compress_1.cpp", funSignature);
		}
		if(compressor.m_pPut_buf_user == input_data)
		{
			SpecFileGeneration("d->m_pPut_buf_user == pIn_buf;", "tdefl_compress_2.cpp", funSignature);
		}
		if(compressor.m_pPut_buf_user == output_buffer)
		{
			SpecFileGeneration("d->m_pPut_buf_user == pOut_buf;", "tdefl_compress_3.cpp", funSignature);
		}
		if(compressor.m_pIn_buf == input_data)
		{
			SpecFileGeneration("d->m_pIn_buf == pIn_buf;", "tdefl_compress_4.cpp", funSignature);
		}
		if(compressor.m_pIn_buf == output_buffer)
		{
			SpecFileGeneration("d->m_pIn_buf == pOut_buf;", "tdefl_compress_5.cpp", funSignature);
		}
		if(compressor.m_pOut_buf == input_data)
		{
			SpecFileGeneration("d->m_pOut_buf == pIn_buf;", "tdefl_compress_6.cpp", funSignature);
    }

    return 0;
}
