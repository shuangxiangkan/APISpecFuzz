EXTERN int ZEXPORT deflateCopy(z_streamp dest, z_streamp source)
{
	dest = source;
	return Z_OK;
}