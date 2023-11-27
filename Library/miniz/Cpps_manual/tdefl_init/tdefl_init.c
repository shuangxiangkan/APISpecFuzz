#include <stdio.h>
#include <string.h>
#include <fcntl.h>

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

// 自定义的结构，用于传递到回调函数
typedef struct {
    FILE *file;  // 文件句柄
    // 可以添加更多字段，如状态信息、计数器等
} output_context_t;

// 回调函数，用于处理压缩后的数据
static mz_bool put_buf_callback(const void *pBuf, int len, void *pUser) {
    output_context_t *context = (output_context_t *)pUser;
    if (context && context->file) {
        fwrite(pBuf, 1, len, context->file);  // 将数据写入文件
        // 这里可以添加更多逻辑，如更新状态、计数等
    }
    return MZ_TRUE;
}

int main(int argc, char *argv[]) {

    // 确保 AFL++ 传递了输入文件路径
    if (argc < 2) {
        // fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return 1;
    }
	while (__AFL_LOOP(1000)) 
	{
		// // 打开 AFL++ 提供的测试用例文件
        // int fd = open(argv[1], O_RDONLY);
        // if (fd < 0) {
        //     // 处理打开文件失败的情况
        //     return -1;
        // }

		output_context_t context;
		context.file = open(argv[1], "wb");
		if (!context.file) {
			fprintf(stderr, "无法打开文件进行写入。\n");
			return 1;
		}

		// 初始化压缩器
		tdefl_compressor compressor;
		tdefl_status status = tdefl_init(&compressor, put_buf_callback, &context, TDEFL_DEFAULT_MAX_PROBES);

		const char *funSignature = "MINIZ_EXPORT tdefl_status tdefl_init(tdefl_compressor *d, tdefl_put_buf_func_ptr pPut_buf_func, void *pPut_buf_user, int flags)";
		
		if(compressor.m_pPut_buf_user == &context)
		{
			SpecFileGeneration("d->m_pPut_buf_user = pPut_buf_user;", "tdefl_init_0.cpp", funSignature);
		}
		if(compressor.m_pIn_buf == &context)
		{
			SpecFileGeneration("d->m_pIn_buf = pPut_buf_user;", "tdefl_init_1.cpp", funSignature);
		}
		if(compressor.m_pOut_buf == &context)
		{
			SpecFileGeneration("d->m_pOut_buf = pPut_buf_user;", "tdefl_init_2.cpp", funSignature);
		}
		
		fclose(context.file);

    }

    return 0;
}
