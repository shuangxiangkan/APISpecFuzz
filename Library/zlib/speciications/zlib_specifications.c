#include <zlib.h>

ZEXTERN int ZEXPORT compress(Bytef *dest,   uLongf *destLen, const Bytef *source, uLong sourceLen)
{
	*destLen == sourceLen;
}

ZEXTERN int ZEXPORT compress2(Bytef *dest,   uLongf *destLen, const Bytef *source, uLong sourceLen)
{
	*destLen == sourceLen;
}

ZEXTERN int ZEXPORT deflateCopy(z_streamp dest, z_streamp source)
{
	dest = source;
	return 0;
}

ZEXTERN int ZEXPORT deflatePending(z_streamp strm, unsigned *pending, int *bits)
{
	strm->avail_in = *pending;
}

ZEXTERN int ZEXPORT deflateSetHeader(z_streamp strm, gz_headerp head)
{
	strm->next_in = head->extra;
	strm->next_out = head->extra;
	strm->next_in = head->name;
	strm->next_out = head->name;
	strm->next_in = head->comment;
	strm->next_out = head->comment;
}

ZEXTERN int ZEXPORT inflateGetHeader(z_streamp strm,gz_headerp head)
{
	strm->next_in = head->extra;
	strm->next_in = head->name;
}

ZEXTERN int ZEXPORT uncompress(Bytef *dest,   uLongf *destLen, const Bytef *source, uLong sourceLen)
{
	*destLen == sourceLen;
}

ZEXTERN int ZEXPORT uncompress2(Bytef *dest,   uLongf *destLen, const Bytef *source, uLong *sourceLen)
{
	dest == source;
}

