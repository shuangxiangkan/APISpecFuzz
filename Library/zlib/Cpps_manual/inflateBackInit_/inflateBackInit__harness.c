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
        const char *version = strtok(buf, "\n");

        z_stream strm;
		memset(&strm, 0, sizeof(strm));

		// 创建用于解压缩的窗口缓冲区
		unsigned char window[1 << 15]; // 32K 窗口大小

		// 初始化解压缩流
		if (inflateBackInit_(&strm, 15, window, version, sizeof(z_stream)) != Z_OK) {
			printf("inflateBackInit_ 失败\n");
			return -1;
		}

		
		const char *funSignature = "ZEXTERN int ZEXPORT inflateBackInit_(z_streamp strm, int windowBits, unsigned char FAR *window, const char *version, int stream_size)";
		if(strm.msg == version)
		{
			SpecFileGeneration("strm->msg = version;", "inflateBackInit__0.cpp", funSignature);
		}
		if(strm.msg == window)
		{
			SpecFileGeneration("strm->msg = window;", "inflateBackInit__1.cpp", funSignature);
		}

		// 清理
		inflateBackEnd(&strm);



    }
    return 0;
}
