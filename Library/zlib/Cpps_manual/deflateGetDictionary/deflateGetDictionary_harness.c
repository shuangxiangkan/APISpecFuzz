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
        const char *inputData = strtok(buf, "\n");

        z_stream strm;
		strm.zalloc = Z_NULL;
		strm.zfree = Z_NULL;
		strm.opaque = Z_NULL;
		deflateInit(&strm, Z_DEFAULT_COMPRESSION);

		// 为压缩操作提供一些数据
		// const char *inputData = "这是一些测试数据";
		strm.next_in = (Bytef *)inputData;
		strm.avail_in = strlen(inputData);

		// 执行压缩以填充内部字典
		Bytef buffer[1024];
		strm.next_out = buffer;
		strm.avail_out = sizeof(buffer);
		deflate(&strm, Z_FINISH);

		// 获取字典
		Bytef dictionary[1024];
		uInt dictLength = sizeof(dictionary);
		deflateGetDictionary(&strm, dictionary, &dictLength);

		
		const char *funSignature = "ZEXTERN int ZEXPORT deflateGetDictionary(z_streamp strm, Bytef *dictionary, uInt  *dictLength)";

        if(strm.next_in == (Bytef *)inputData)
		{
			SpecFileGeneration("strm.next_in = inputData;", "deflateGetDictionary_0.cpp", funSignature);
		}
		if(strm.next_out == (Bytef *)buffer)
		{
			SpecFileGeneration("strm.next_out = buffer;", "deflateGetDictionary_1.cpp", funSignature);
		}
		if(strm.avail_in == dictLength)
		{
			SpecFileGeneration("strm.avail_in == *dictLength;", "deflateGetDictionary_2.cpp", funSignature);
		}
		if(strm.avail_out == dictLength)
		{
			SpecFileGeneration("strm.avail_out == *dictLength;", "deflateGetDictionary_3.cpp", funSignature);
		}
		// 清理压缩流
		deflateEnd(&strm);


    }
    return 0;
}
