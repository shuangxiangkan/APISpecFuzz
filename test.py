# 生成要写入到C++文件的代码字符串
cpp_code = """
#include <iostream>
#include "cJSON.h"

int main() {
    cJSON_Version version = cJSON_Version();
    
    std::cout << "cJSON 版本信息：" << std::endl;
    std::cout << "主版本号 (major): " << version.major << std::endl;
    std::cout << "次版本号 (minor): " << version.minor << std::endl;
    std::cout << "修订版本号 (revision): " << version.revision << std::endl;

    return 0;
}

"""

# 指定要写入的文件名
file_name = ("cJSON_Test.cpp")

# 打开文件并写入C++代码
with open(file_name, "w") as cpp_file:
    cpp_file.write(cpp_code)

print(f"C++代码已写入到文件 {file_name}")
