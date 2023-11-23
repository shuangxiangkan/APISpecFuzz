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
    // 确保 AFL++ 传递了输入文件路径
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

		// 读取数据
		char buf[1024];
		z_size_t nRead = gzfread(buf, 1, sizeof(buf), file);

		// 检查读取的元素数量
		if (nRead < sizeof(buf)) {
			if (gzeof(file)) {
				printf("到达文件末尾\n");
			} else {
				int errnum;
				const char *errorString = gzerror(file, &errnum);
				printf("读取错误: %s (错误代码: %d)\n", errorString, errnum);
			}
    	}
        
		const char *funSignature = "ZEXTERN z_size_t ZEXPORT gzfread(voidp buf, z_size_t size, z_size_t nitems, gzFile file)";
		if(file->next == buf)
		{
			SpecFileGeneration("file->next = buf;", "gzfread_0.cpp", funSignature);
		}


		// 关闭 gzip 文件
		gzclose(file);
		close(fd);

    }
    return 0;
}
