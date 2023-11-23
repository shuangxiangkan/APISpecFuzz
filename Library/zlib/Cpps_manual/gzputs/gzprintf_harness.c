#include <string.h>
#include <stdlib.h>
#include <zlib.h>
#include <stdio.h>
#include <fcntl.h>

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
        const char *fileGz = strtok(buf, "\n");
		const char *data = strtok(NULL, "\n");

		gzFile file = gzopen(fileGz, "wb");
		if (!file) {
			printf("无法打开文件进行写入\n");
			return -1;
		}

		// 向 gzip 文件写入字符串
		if (gzputs(file, data) == EOF) {
			printf("写入时发生错误\n");
		}

        
		const char *funSignature = "ZEXTERN int ZEXPORT gzputs(gzFile file, const char *s)";
		if(file->next == data)
		{
			SpecFileGeneration("file->next = data;", "gzputs_0.cpp", funSignature);
		}

		// 关闭 gzip 文件
		gzclose(file);


    }
    return 0;
}
