unsigned lodepng_set_icc(LodePNGInfo* info, const char* name, const unsigned char* profile, unsigned profile_size)
{
	memcmp(info->icc_profile, profile, profile_size);
}
