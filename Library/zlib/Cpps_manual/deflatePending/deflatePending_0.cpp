ZEXTERN int ZEXPORT deflatePending(z_streamp strm, unsigned *pending, int *bits)
{
	strm->avail_in = *pending;
}
