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

// 定义一个结构来保存输出相关的信息
typedef struct {
    FILE *file;  // 输出文件的句柄
    size_t bytes_written;  // 已写入的字节数
} output_context_t;

// 回调函数，将压缩数据写入文件，并更新 bytes_written
static mz_bool put_buf_callback(const void *pBuf, int len, void *pUser) {
    output_context_t *context = (output_context_t *)pUser;
    size_t written = fwrite(pBuf, 1, len, context->file);
    context->bytes_written += written;
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

		// char *s_pStr = strtok(buf, "\n");

		// Example source data to compress
		const char *pSrc_buf = strtok(buf, "\n");
		size_t src_data_len = strlen(pSrc_buf);

		// 准备输出上下文
		output_context_t context;
		context.file = fopen("output.dat", "wb");  // 打开一个文件用于写入
		context.bytes_written = 0;

		if (!context.file) {
			fprintf(stderr, "无法打开文件进行写入。\n");
			return 1;
		}

		// 压缩数据
		mz_bool status = tdefl_compress_mem_to_output(pSrc_buf, src_data_len, put_buf_callback, &context, TDEFL_DEFAULT_MAX_PROBES);

		// 关闭文件
		fclose(context.file);

		const char *funSignature = "MINIZ_EXPORT mz_bool tdefl_compress_mem_to_output(const void *pBuf, size_t buf_len, tdefl_put_buf_func_ptr pPut_buf_func, void *pPut_buf_user, int flags)";
		
		if(pSrc_buf == &context)
		{
			SpecFileGeneration("pBuf == pPut_buf_user;", "tdefl_compress_mem_to_output_0.cpp", funSignature);
		}
    }

    return 0;
}
