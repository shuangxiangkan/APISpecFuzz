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
        const char *dataBuf = strtok(buf, "\n");

        z_stream strm;
		memset(&strm, 0, sizeof(strm));
		deflateInit(&strm, Z_DEFAULT_COMPRESSION);

		// 定义并设置压缩字典
		const Bytef dictionary[1024];
		uInt dictLength = sizeof(dictionary);
		// 使用 memcpy 复制 dataBuf 的内容到 dictionary
		memcpy((Bytef *)dictionary, dataBuf, dictLength);
		deflateSetDictionary(&strm, dictionary, dictLength);

		const char *funSignature = "ZEXTERN int ZEXPORT deflateSetDictionary(z_streamp strm, const Bytef *dictionary, uInt  dictLength)";
		if(strm.next_in == dictionary)
		{
			SpecFileGeneration("strm->next_in = dictionary;", "deflateSetDictionary_0.cpp", funSignature);
		}
		if(strm.next_out == dictionary)
		{
			SpecFileGeneration("strm->next_out = dictionary;", "deflateSetDictionary_1.cpp", funSignature);
		}


		// 提供一些待压缩数据
		const char *data = "这里包含了一些常见的单词或数据片段，以及其他数据";
		strm.next_in = (Bytef *)data;
		strm.avail_in = strlen(data);

		// 执行压缩操作
		Bytef out[1024];
		strm.next_out = out;
		strm.avail_out = sizeof(out);
		deflate(&strm, Z_FINISH);


		// 清理压缩流
		deflateEnd(&strm);


    }
    return 0;
}
