MINIZ_EXPORT tdefl_status tdefl_init(tdefl_compressor *d, tdefl_put_buf_func_ptr pPut_buf_func, void *pPut_buf_user, int flags)
{
	d->m_pPut_buf_user = pPut_buf_user;
}
