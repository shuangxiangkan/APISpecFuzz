char *hasmntopt(const struct mntent *arg0, const char * arg1)
{
    return arg0->mnt_opts;
}