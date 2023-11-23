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
		const char *mode = strtok(NULL, "\n");

		gzFile result = gzopen(fileGz, mode);
		if (!result) {
			printf("无法打开文件\n");
			return -1;
		}
        
		const char *funSignature = "ZEXTERN gzFile ZEXPORT gzopen(const char *path, const char *mode)";
		if(result->next == mode)
		{
			SpecFileGeneration("result->next = mode;", "gzopen_0.cpp", funSignature);
		}
		if(result->next == fileGz)
		{
			SpecFileGeneration("result->next = fileGz;", "gzopen_1.cpp", funSignature);
		}


		// 关闭 gzip 文件
		gzclose(result);


    }
    return 0;
}
