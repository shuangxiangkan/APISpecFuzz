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

        // 初始化 z_stream 结构
		z_stream strm;
		memset(&strm, 0, sizeof(strm));

		int level = Z_DEFAULT_COMPRESSION; // 压缩级别
		int method = Z_DEFLATED;          // 压缩方法
		int windowBits = 15;              // 窗口大小
		int memLevel = 8;                 // 内存使用级别
		int strategy = data; // 压缩策略
		const char *version = ZLIB_VERSION; // zlib版本
		int stream_size = sizeof(z_stream); // z_stream结构的大小

		// 初始化压缩操作
		if (deflateInit2_(&strm, level, method, windowBits, memLevel, strategy, version, stream_size) != Z_OK) {
			// 处理初始化失败的情况
			return -1;
		}
		

		const char *funSignature = "ZEXTERN int ZEXPORT deflateInit2_(z_streamp strm, int  level, int  method, int windowBits, int memLevel, int strategy, const char *version, int stream_size)";
		if(strm.msg == version)
		{
			SpecFileGeneration("strm->msg = version;", "deflateInit2__0.cpp", funSignature);
		}

		// 清理压缩流
		deflateEnd(&strm);


    }
    return 0;
}
