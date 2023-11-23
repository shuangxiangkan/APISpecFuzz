import os
import subprocess

afl_clang_fast_path = "/home/kansx/Fuzz/AFLplusplus/afl-clang-fast"
zlib_ll_path = "/home/kansx/Fuzz/APISpecFuzz/Library/zlib/zlib_1.3.ll"
zlib_cpps_path = "/home/kansx/Fuzz/APISpecFuzz/Library/zlib/Cpps_manual"

# 获取当前脚本所在的目录
current_directory = os.path.dirname(zlib_cpps_path)
print(current_directory)

def compile_c_files_in_directory(directory):
    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith(".c"):
                source_file = os.path.join(root, filename)
                output_file = os.path.join(root, os.path.splitext(filename)[0])
                compile_command = f"{afl_clang_fast_path} {source_file} {zlib_ll_path} -o {output_file}"
                # compile_command = f"{afl_clang_fast_path} -w {source_file} -o {output_file}"

                try:
                    subprocess.run(compile_command, shell=True, check=True)
                    print(f"已成功编译: {source_file} 为 {output_file}")
                except subprocess.CalledProcessError as e:
                    print(f"编译 {source_file} 失败: {e}")

    print(" --------------------------- 编译完成 --------------------------- ")

# 调用函数来递归遍历并编译
compile_c_files_in_directory(zlib_cpps_path)
