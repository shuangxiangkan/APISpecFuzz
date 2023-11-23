#include <stdio.h>
#include <magic.h>
#include <string.h>

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

int main() 
{
    char buffer[1024];
	while (__AFL_LOOP(1000))
	{
		memset(buffer, 0, sizeof(buffer));
		if (read(0, buffer, sizeof(buffer)) < 0) {
			return 1;
		}

		// const char *filename = strtok(buf, "\n");

		magic_t magic_cookie;
		const char *data_length = strlen(buffer);

		// 打开 magic cookie
		magic_cookie = magic_open(MAGIC_NONE);
		if (magic_cookie == NULL) {
			// printf("无法初始化 magic 库\n");
			return 1;
		}


		// 加载默认的魔数数据库
		if (magic_load(magic_cookie, NULL) != 0) {
			// printf("加载魔数数据库失败: %s\n", magic_error(magic_cookie));
			magic_close(magic_cookie);
			return 1;
		}


		const char * result = magic_buffer(magic_cookie, buffer, data_length);


		const char *funSignature = "const char * magic_buffer(magic_t cookie, const void *buffer, size_t length)";

		if(result == buffer) {
			SpecFileGeneration("return buffer", "magic_buffer_0.cpp", funSignature);
		}
	}

	return 0;
}