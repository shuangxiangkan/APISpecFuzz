import os
import subprocess

# afl_clang_fast_path = "/home/kansx/Fuzz/AFLplusplus/afl-clang-fast"
cJSON_IR_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/cJSON.ll"
cJSON_h_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON"
cJSON_SVF_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF"

# 获取当前脚本所在的目录
current_directory = os.path.dirname(os.path.abspath(__file__))

def compile_c_files_in_directory(directory):
    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith(".c"):
                source_file = os.path.join(root, filename)
                output_file = os.path.join(root, os.path.splitext(filename)[0] + ".ll")
                compile_command = f"clang -c -emit-llvm -S {source_file} -o {output_file} -I{cJSON_h_path}"
                # compile_command = f"{afl_clang_fast_path} -w {source_file} -o {output_file}"

                try:
                    subprocess.run(compile_command, shell=True, check=True)
                    print(f"已成功编译: {source_file} 为 {output_file}")
                except subprocess.CalledProcessError as e:
                    print(f"编译 {source_file} 失败: {e}")

def compile_ll_files_in_directory(directory):
    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith(".ll"):
                source_file = os.path.join(root, filename)
                output_file = os.path.join(root, os.path.splitext(filename)[0] + "_complete.ll")
                compile_command = f"llvm-link {source_file} {cJSON_IR_path} -o {output_file}"
                # compile_command = f"{afl_clang_fast_path} -w {source_file} -o {output_file}"

                try:
                    subprocess.run(compile_command, shell=True, check=True)
                    print(f"已成功编译: {source_file} 为 {output_file}")
                except subprocess.CalledProcessError as e:
                    print(f"编译 {source_file} 失败: {e}")

    print(" --------------------------- 编译完成 --------------------------- ")

# 调用函数来递归遍历并编译
compile_c_files_in_directory(current_directory)
compile_ll_files_in_directory(current_directory)
