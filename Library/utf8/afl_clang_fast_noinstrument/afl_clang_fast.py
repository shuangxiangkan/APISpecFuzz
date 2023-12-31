import os
import subprocess

afl_clang_fast_path = "/home/kansx/Fuzz/AFLplusplus/afl-clang-fast"
utf8_ll_path = "/home/kansx/Fuzz/APISpecFuzz/Library/utf8/utf8.ll"
utf8_h_path = "/home/kansx/Fuzz/APISpecFuzz/Library/utf8/"
utf8_cpps_path = "/home/kansx/Fuzz/APISpecFuzz/Library/utf8/Cpps"


# 获取当前脚本所在的目录
current_directory = os.path.dirname(utf8_cpps_path)
print(current_directory)

def compile_c_files_in_directory(directory):
    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith(".c"):
                source_file = os.path.join(root, filename)
                output_file_base = os.path.splitext(filename)[0] + "_noin"
                output_file = os.path.join(root, output_file_base)
                compile_command = f"{afl_clang_fast_path} {source_file} {utf8_ll_path} -o {output_file} -I{utf8_h_path}"
                # compile_command = f"{afl_clang_fast_path} -w {source_file} -o {output_file}"

                try:
                    subprocess.run(compile_command, shell=True, check=True)
                    print(f"已成功编译: {source_file} 为 {output_file}")
                except subprocess.CalledProcessError as e:
                    print(f"编译 {source_file} 失败: {e}")

    print(" --------------------------- 编译完成 --------------------------- ")

# 调用函数来递归遍历并编译
compile_c_files_in_directory(utf8_cpps_path)
