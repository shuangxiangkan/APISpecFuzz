void lodepng_color_mode_copy(LodePNGColorMode* dest, const LodePNGColorMode* source)
{
	memcmp(dest, source, sizeof(LodePNGColorMode));
}
