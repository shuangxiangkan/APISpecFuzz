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
		size_t sizes[1];
		size_t nbuffers = 1;

		// 打开 magic cookie
		magic_cookie = magic_open(MAGIC_NONE);
		if (magic_cookie == NULL) {
			// printf("无法初始化 magic 库\n");
			return 1;
		}


		// 加载魔数数据库
		int result = magic_load_buffers(magic_cookie, buffer, sizes, nbuffers);


		const char *funSignature = "int magic_load_buffers(magic_t cookie, void **buffers, size_t *sizes, size_t nbuffers)";

		if(*buffer == sizes[0]) {
			SpecFileGeneration("*buffer == sizes[0]", "magic_load_buffers_0.cpp", funSignature);
		}
		if(*sizes == nbuffers) {
			SpecFileGeneration("*sizes = nbuffers", "magic_load_buffers_1.cpp", funSignature);
		}
	}

	return 0;
}