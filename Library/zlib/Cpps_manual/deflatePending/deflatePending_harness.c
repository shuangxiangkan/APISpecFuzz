#include <string.h>
#include <stdlib.h>
#include <zlib.h>
#include <stdio.h>

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

        // 定义待压缩的原始数据
        const char *data = strtok(buf, "\n");

        z_stream strm;
		memset(&strm, 0, sizeof(strm));
		deflateInit(&strm, Z_DEFAULT_COMPRESSION);

		// 提供一些待压缩数据
		// const char *data = "这是一些待压缩的测试数据";
		strm.next_in = (Bytef *)data;
		strm.avail_in = strlen(data);

		// 执行一些压缩操作
		Bytef out[1024];
		strm.next_out = out;
		strm.avail_out = sizeof(out);
		deflate(&strm, Z_NO_FLUSH);

		// 查询待处理的未压缩数据量和输出缓冲区中的当前位数
		unsigned pending;
		int bits;
		deflatePending(&strm, &pending, &bits);

		// 这里可以根据 pending 和 bits 的值进行相关操作


		const char *funSignature = "ZEXTERN int ZEXPORT deflatePending(z_streamp strm, unsigned *pending, int *bits)";
		if(strm.avail_in == pending)
		{
			SpecFileGeneration("strm->avail_in = *pending;", "deflatePending_0.cpp", funSignature);
		}
		if (strm.avail_out == pending)
		{
			SpecFileGeneration("strm->avail_out = *pending;", "deflatePending_1.cpp", funSignature);
		}
		if (strm.data_type == bits)
		{
			SpecFileGeneration("strm->data_type = *bits;", "deflatePending_2.cpp", funSignature);
		}

		// 清理压缩流
		deflateEnd(&strm);


    }
    return 0;
}
