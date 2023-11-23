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
        const char *source = strtok(buf, "\n");

        uLong sourceLen = strlen(source) + 1;  // 包含终止符

        // 准备压缩后的数据缓冲区
        uLongf destLen = compressBound(sourceLen); // 获取压缩后最大可能长度
        Bytef *dest = (Bytef *)malloc(destLen);

        if (dest == NULL) {
            return -1;
        }

		int level = 6; // 设置压缩级别

        // 压缩数据
        if (compress2(dest, &destLen, (const Bytef *)source, sourceLen, level) != Z_OK) {
            free(dest);
            return -1;
        }

        const char *funSignature = "ZEXTERN int ZEXPORT compress2(Bytef *dest,   uLongf *destLen, const Bytef *source, uLong sourceLen)";

        if(dest == (const Bytef *)source)
		{
			SpecFileGeneration("dest == source;", "compress2_0.cpp", funSignature);
		}
        if(destLen == sourceLen)
		{
			SpecFileGeneration("*destLen == sourceLen;", "compress2_1.cpp", funSignature);
		}

        // 释放压缩数据缓冲区
        free(dest);

    }
    return 0;
}
