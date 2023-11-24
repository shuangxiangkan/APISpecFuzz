import os
import subprocess

afl_clang_fast_path = "/home/kansx/Fuzz/AFLplusplus/afl-clang-fast"
miniz_c_path = "/home/kansx/Fuzz/APISpecFuzz/Library/miniz/miniz-3.0.2/miniz.c"
miniz_h_path = "/home/kansx/Fuzz/APISpecFuzz/Library/miniz/miniz-3.0.2"

# 获取当前脚本所在的目录
current_directory = os.path.dirname(os.path.abspath(__file__))

def compile_c_files_in_directory(directory):
    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith(".c"):
                source_file = os.path.join(root, filename)
                output_file = os.path.join(root, os.path.splitext(filename)[0])
                compile_command = f"{afl_clang_fast_path} {source_file} {miniz_c_path} -o {output_file} -I{miniz_h_path}"

                try:
                    subprocess.run(compile_command, shell=True, check=True)
                    print(f"已成功编译: {source_file} 为 {output_file}")
                except subprocess.CalledProcessError as e:
                    print(f"编译 {source_file} 失败: {e}")

    print(" --------------------------- 编译完成 --------------------------- ")

# 调用函数来递归遍历并编译
compile_c_files_in_directory(current_directory)
