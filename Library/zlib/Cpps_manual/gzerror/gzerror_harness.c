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

int main(int argc, char *argv[]) {


    if (argc < 2) {
        // fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return 1;
    }

    while (__AFL_LOOP(1000)) {
        // 打开 AFL++ 提供的测试用例文件
        int fd = open(argv[1], O_RDONLY);
        if (fd < 0) {
            // 处理打开文件失败的情况
            return -1;
        }
		// fprintf(stderr, "Correct open input_file\n");

        // 使用文件描述符创建一个 gzip 文件对象
        gzFile file = gzdopen(fd, "rb");
        if (file == NULL) {
            // 处理创建 gzip 文件对象失败的情况
            close(fd);
            return -1;
        }
		fprintf(stderr, "Correct gzdopen input_file\n");

		// 尝试从文件中读取数据
		char buffer[128];
		if (gzread(file, buffer, sizeof(buffer)) <= 0) {
			// 读取出错，获取错误信息
			int errnum;
			const char *errorString = gzerror(file, &errnum);
			const char *funSignature = "ZEXTERN const char * ZEXPORT gzerror(gzFile file, int *errnum)";
			if(errorString == file->next)
			{
				SpecFileGeneration("return file.next;", "gzerror_0.cpp", funSignature);
			}
		}

		// 关闭 gzip 文件
		gzclose(file);
		close(fd);

    }
    return 0;
}
