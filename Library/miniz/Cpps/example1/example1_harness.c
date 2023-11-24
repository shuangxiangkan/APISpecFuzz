// example1.c - Demonstrates miniz.c's compress() and uncompress() functions (same as zlib's).
// Public domain, May 15 2011, Rich Geldreich, richgel99@gmail.com. See "unlicense" statement at the end of tinfl.c.
#include <stdio.h>
#include "miniz.h"
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint;

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

// The string to compress.
// static const char *s_pStr = "Good morning Dr. Chandra. This is Hal. I am ready for my first lesson." \
//   "Good morning Dr. Chandra. This is Hal. I am ready for my first lesson." \
//   "Good morning Dr. Chandra. This is Hal. I am ready for my first lesson." \
//   "Good morning Dr. Chandra. This is Hal. I am ready for my first lesson." \
//   "Good morning Dr. Chandra. This is Hal. I am ready for my first lesson." \
//   "Good morning Dr. Chandra. This is Hal. I am ready for my first lesson." \
//   "Good morning Dr. Chandra. This is Hal. I am ready for my first lesson.";

int main(int argc, char *argv[])
{

  char buf[1024];
	while (__AFL_LOOP(1000)) 
	{
		memset(buf, 0, sizeof(buf));
		if (read(0, buf, sizeof(buf)) < 0) {
			return 1;
		}

    uint step = 0;
    int cmp_status;
    char *s_pStr = strtok(buf, "\n");
    uLong src_len = (uLong)strlen(s_pStr);
    uLong cmp_len = compressBound(src_len);
    uLong uncomp_len = src_len;
    uint8 *pCmp, *pUncomp;
    uint total_succeeded = 0;
    (void)argc, (void)argv;

    // printf("miniz.c version: %s\n", MZ_VERSION);

    // do
    // {
    // Allocate buffers to hold compressed and uncompressed data.
    pCmp = (mz_uint8 *)malloc((size_t)cmp_len);
    pUncomp = (mz_uint8 *)malloc((size_t)src_len);
    if ((!pCmp) || (!pUncomp))
    {
      // printf("Out of memory!\n");
      return EXIT_FAILURE;
    }

    // Compress the string.
    cmp_status = compress(pCmp, &cmp_len, (const unsigned char *)s_pStr, src_len);
    if (cmp_status != Z_OK)
    {
      // printf("compress() failed!\n");
      free(pCmp);
      free(pUncomp);
      return EXIT_FAILURE;
    }
    if (pCmp == (const unsigned char *)s_pStr) 
    {
      SpecFileGeneration("pDest = (const unsigned char *)pSource", "mz_compress_0.cpp", "int mz_compress(const unsigned char *pDest, mz_ulong *pDest_len, const unsigned char *pSource, mz_ulong source_len)");
    }
    if (cmp_len == src_len) 
    {
      SpecFileGeneration("*pDest_len == source_len", "mz_compress_1.cpp", "int mz_compress(const unsigned char *pDest, mz_ulong *pDest_len, const unsigned char *pSource, mz_ulong source_len)");
    }

    // printf("Compressed from %u to %u bytes\n", (mz_uint32)src_len, (mz_uint32)cmp_len);

    if (step)
    {
      // Purposely corrupt the compressed data if fuzzy testing (this is a very crude fuzzy test).
      uint n = 1 + (rand() % 3);
      while (n--)
      {
        uint i = rand() % cmp_len;
        pCmp[i] ^= (rand() & 0xFF);
      }
    }

    // Decompress.
    cmp_status = uncompress(pUncomp, &uncomp_len, pCmp, cmp_len);
    total_succeeded += (cmp_status == Z_OK);
    if (pUncomp == pCmp) 
    {
      SpecFileGeneration("pDest = pSource", "mz_uncompress_0.cpp", "int mz_uncompress(unsigned char *pDest, mz_ulong *pDest_len, const unsigned char *pSource, mz_ulong source_len)");
    }
    if (uncomp_len == cmp_len) 
    {
      SpecFileGeneration("*pDest_len == source_len", "mz_uncompress_1.cpp", "int mz_uncompress(unsigned char *pDest, mz_ulong *pDest_len, const unsigned char *pSource, mz_ulong source_len)");
    }

    if (step)
    {
      // printf("Simple fuzzy test: step %u total_succeeded: %u\n", step, total_succeeded);
    }
    else
    {
      if (cmp_status != Z_OK)
      {
        // printf("uncompress failed!\n");
        free(pCmp);
        free(pUncomp);
        return EXIT_FAILURE;
      }

      // printf("Decompressed from %u to %u bytes\n", (mz_uint32)cmp_len, (mz_uint32)uncomp_len);

      // Ensure uncompress() returned the expected data.
      if ((uncomp_len != src_len) || (memcmp(pUncomp, s_pStr, (size_t)src_len)))
      {
        // printf("Decompression failed!\n");
        free(pCmp);
        free(pUncomp);
        return EXIT_FAILURE;
      }
    }

    free(pCmp);
    free(pUncomp);

    step++;

    //   // Keep on fuzzy testing if there's a non-empty command line.
    // } while (argc >= 2);
  }

  // printf("Success.\n");
  return EXIT_SUCCESS;
}
