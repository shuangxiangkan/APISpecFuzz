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
		strm.zalloc = Z_NULL;
		strm.zfree = Z_NULL;
		strm.opaque = Z_NULL;

		// 初始化解压缩流，使用 gzip 格式
		int ret = inflateInit2_(&strm, 31, version, sizeof(z_stream));
		if (ret != Z_OK) {
			printf("inflateInit2_ 失败\n");
			return -1;
		}
		

		const char *funSignature = "ZEXTERN int ZEXPORT inflateInit2_(z_streamp strm, int  windowBits,  const char *version, int stream_size)";
		if(strm.msg == version)
		{
			SpecFileGeneration("strm->msg = version;", "inflateInit2__0.cpp", funSignature);
		}

		// 清理压缩流
		deflateEnd(&strm);


    }
    return 0;
}
