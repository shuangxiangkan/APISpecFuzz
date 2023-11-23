ZEXTERN int ZEXPORT inflateGetHeader(z_streamp strm,gz_headerp head)
{
	strm->next_in = head.name;
}
