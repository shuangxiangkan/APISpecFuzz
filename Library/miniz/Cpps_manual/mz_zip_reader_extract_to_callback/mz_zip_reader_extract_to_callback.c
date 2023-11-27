#include <stdio.h>
#include <string.h>
#include <fcntl.h>

#include "miniz.h"

// 自定义的用户数据结构
typedef struct {
    // 这里可以加入任何需要的字段
    int someValue;
} UserData;


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

static size_t my_write_callback(void *pOpaque, mz_uint64 file_ofs, const void *pBuf, size_t n) {
    (void)file_ofs; // 未使用的参数
    (void)pOpaque;  // 未使用的参数
    return fwrite(pBuf, 1, n, stdout);
}

int main(int argc, char *argv[]) 
{

    // 确保 AFL++ 传递了输入文件路径
    if (argc < 2) {
        // fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return 1;
    }
	while (__AFL_LOOP(1000)) 
	{
		// // 打开 AFL++ 提供的测试用例文件
        // int fd = open(argv[1], O_RDONLY);
        // if (fd < 0) {
        //     // 处理打开文件失败的情况
        //     return -1;
        // }

		FILE *pFile = fopen(argv[1], "rb");
		if (!pFile) {
			fprintf(stderr, "Failed to open zip file.\n");
			return 1;
		}

		mz_zip_archive zip_archive;
		memset(&zip_archive, 0, sizeof(zip_archive));

		// 使用文件流初始化ZIP读取器
		if (!mz_zip_reader_init_cfile(&zip_archive, pFile, 0, 0)) {
			fprintf(stderr, "初始化ZIP读取器失败\n");
			fclose(pFile);
			return 1;
		}

		UserData userData;
		userData.someValue = 123; // 初始化自定义数据

		if (!mz_zip_reader_extract_to_callback(&zip_archive, 0, my_write_callback, &userData, 0)) {
			fprintf(stderr, "提取文件失败\n");
			mz_zip_reader_end(&zip_archive);
			fclose(pFile);
			return 1;
		}


		const char *funSignature = "MINIZ_EXPORT mz_bool mz_zip_reader_extract_to_callback(mz_zip_archive *pZip, mz_uint file_index, mz_file_write_func pCallback, void *pOpaque, mz_uint flags)";
		
		if(zip_archive.m_pIO_opaque == &userData)
		{
			SpecFileGeneration("pZip->m_pIO_opaque = pOpaque;", "mz_zip_reader_extract_to_callback_0.cpp", funSignature);
		}

		mz_zip_reader_end(&zip_archive);
		fclose(pFile);

	}

    return 0;
}
