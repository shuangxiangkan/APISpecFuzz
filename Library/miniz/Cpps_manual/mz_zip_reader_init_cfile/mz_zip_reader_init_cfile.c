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

		// Zero initialize the mz_zip_archive structure
		mz_zip_archive zip_archive;
		memset(&zip_archive, 0, sizeof(zip_archive));

		// Initialize the zip reader for the C file
		mz_bool status = mz_zip_reader_init_cfile(&zip_archive, pFile, 0, 0);


		const char *funSignature = "MINIZ_EXPORT mz_bool mz_zip_reader_init_cfile(mz_zip_archive *pZip, MZ_FILE *pFile, mz_uint64 archive_size, mz_uint flags)";
		
		if(zip_archive.m_pIO_opaque == pFile)
		{
			SpecFileGeneration("pZip->m_pIO_opaque = pFile;", "mz_zip_reader_init_cfile_0.cpp", funSignature);
		}
		if(zip_archive.m_pAlloc_opaque == pFile)
		{
			SpecFileGeneration("pZip->m_pAlloc_opaque = pFile;", "mz_zip_reader_init_cfile_1.cpp", funSignature);
		}
	}

    return 0;
}
