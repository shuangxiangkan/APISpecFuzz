#include <stdio.h>
#include <string.h>
#include <fcntl.h>

#include "miniz.h"

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

int main(int argc, char *argv[]) 
{

    // 确保 AFL++ 传递了输入文件路径
    char buf[1024];
	while (__AFL_LOOP(1000)) 
	{
		memset(buf, 0, sizeof(buf));
		if (read(0, buf, sizeof(buf)) < 0) {
			return 1;
		}

		// 初始化 mz_zip_archive 结构体
		mz_zip_archive zip_archive;
		memset(&zip_archive, 0, sizeof(zip_archive));

		// 创建或打开一个文件用于写入 ZIP 数据
		FILE *pFile = fopen("example.zip", "wb");
		if (!pFile) {
			fprintf(stderr, "无法打开文件进行写入。\n");
			return 1;
		}

		// 初始化 ZIP 写入器
		if (!mz_zip_writer_init_cfile(&zip_archive, pFile, 0)) {
			fprintf(stderr, "初始化 ZIP 写入器失败。\n");
			fclose(pFile);
			return 1;
		}

		// const char *pSrc_buf = strtok(buf, "\n");
		const char *data = strtok(buf, "\n");
		size_t data_size = strlen(data);


		// Zero initialize the mz_zip_archive structure
		// 添加数据到 ZIP 归档
		if (!mz_zip_writer_add_mem_ex_v2(&zip_archive, "example.txt", data, data_size,
										"示例文件的注释", strlen("示例文件的注释"),
										MZ_BEST_COMPRESSION, 0, 0, NULL,
										NULL, 0, NULL, 0)) {
			fprintf(stderr, "添加文件到 ZIP 归档失败。\n");
			mz_zip_writer_end(&zip_archive);
			fclose(pFile);
			return 1;
		}

		const char *funSignature = "MINIZ_EXPORT mz_bool mz_zip_writer_add_mem_ex_v2(mz_zip_archive *pZip, const char *pArchive_name, const void *pBuf, size_t buf_size, const void *pComment, mz_uint16 comment_size, mz_uint level_and_flags, mz_uint64 uncomp_size, mz_uint32 uncomp_crc32, MZ_TIME_T *last_modified, const char *user_extra_data_local, mz_uint user_extra_data_local_len, const char *user_extra_data_central, mz_uint user_extra_data_central_len)";
		
		if(zip_archive.m_pIO_opaque == pFile)
		{
			SpecFileGeneration("pZip->m_pIO_opaque = pFile;", "mz_zip_reader_init_cfile_0.cpp", funSignature);
		}
		if(zip_archive.m_pAlloc_opaque == pFile)
		{
			SpecFileGeneration("pZip->m_pAlloc_opaque = pFile;", "mz_zip_reader_init_cfile_1.cpp", funSignature);
		}

		// 完成 ZIP 写入操作
		mz_zip_writer_finalize_archive(&zip_archive);

		// 关闭 ZIP 写入器和文件流
		mz_zip_writer_end(&zip_archive);
		fclose(pFile);
	}

    return 0;
}
