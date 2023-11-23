ZEXTERN int ZEXPORT deflateSetHeader(z_streamp strm, gz_headerp head)
{
	strm->next_out = head.extra;
}
