#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>

/* Main entry point. */
int main(int argc, char** argv) {
    char buf[100]; /* Example-only buffer, you'd replace it with other global or local variables appropriate for your use case. */

    while (__AFL_LOOP(1000)) {
        /* PLACEHOLDER CODE */

        /* STEP 1: 初始化所有变量 */
        memset(buf, 0, 100);

        /* STEP 2: 读取输入数据，从文件读入时需要先关闭旧的fd然后重新打开文件 */
        read(0, buf, 100);

        /* STEP 3: 调用待fuzz的code */
        if (buf[0] == 'f') {
            printf("one\n");
            if (buf[1] == 'o') {
                printf("two\n");
                if (buf[2] == 'o') {
                    printf("three\n");
                    if (buf[3] == '!') {
                        printf("four\n");
                        abort();
                    }
                }
            }
        }

        /* END PLACEHOLDER CODE */
    }

    /* 循环结束，正常结束。AFL 会重启进程，并清理内存、剩余 fd 等 */
    return 0;
}
