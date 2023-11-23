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

		const char *buf = "这是一些示例文本数据";

		// gzFile file = gzopen(fileGz, "wb");
		// if (!file) {
		// 	printf("无法打开文件进行写入\n");
		// 	return -1;
		// }

		// 准备要写入的数据
		// const char *data = "这是一些示例文本数据";
		z_size_t dataLength = strlen(buf);

		// 写入数据
		z_size_t nWritten = gzfwrite(buf, 1, dataLength, file);
		if (nWritten < dataLength) {
			printf("写入时发生错误\n");
		}
        
		const char *funSignature = "ZEXTERN z_size_t ZEXPORT gzfwrite(voidpc buf, z_size_t size, z_size_t nitems, gzFile file)";
		if(file->next == buf)
		{
			SpecFileGeneration("file->next = buf;", "gzfwrite_0.cpp", funSignature);
		}


		// 关闭 gzip 文件
		gzclose(file);


    }
    return 0;
}
