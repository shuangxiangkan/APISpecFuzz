#include <stdio.h>
#include <string.h>
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

int main() {

    char pMem[4096];
	while (__AFL_LOOP(1000)) 
	{
		memset(pMem, 0, sizeof(pMem));
		if (read(0, pMem, sizeof(pMem)) < 0) {
			return 1;
		}

		size_t size = sizeof(pMem);

		// Zero initialize the mz_zip_archive structure
		mz_zip_archive pZip;
		memset(&pZip, 0, sizeof(pZip));

		// Initialize the zip reader from memory
		mz_bool status = mz_zip_reader_init_mem(&pZip, pMem, size, 0);

    
		const char *funSignature = "MINIZ_EXPORT mz_bool mz_zip_reader_init_mem(mz_zip_archive *pZip, const void *pMem, size_t size, mz_uint flags)";
		
		if (pZip.m_pIO_opaque == pMem)
		{
			SpecFileGeneration("pZip->m_pIO_opaque = pMem;", "mz_zip_reader_init_mem_0.cpp", funSignature);
		}


		mz_zip_reader_end(&pZip);

    }

    return 0;
}
