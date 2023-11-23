import os
import subprocess

# afl_clang_fast_path = "/home/kansx/Fuzz/AFLplusplus/afl-clang-fast"
cJSON_IR_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/cJSON.ll"
cJSON_h_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON"
cJSON_SVF_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF"

# 获取当前脚本所在的目录
current_directory = os.path.dirname(os.path.abspath(__file__))

def compile_c_files_in_directory(directory):
    total_files = 0
    compiled_successfully = 0
    compilation_failed = []

    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith(".c"):
                total_files += 1
                source_file = os.path.join(root, filename)
                output_file = os.path.join(root, os.path.splitext(filename)[0] + ".ll")
                compile_command = f"clang -c -emit-llvm -S {source_file} -o {output_file} -I{cJSON_h_path}"

                try:
                    subprocess.run(compile_command, shell=True, check=True)
                    compiled_successfully += 1
                    print(f"已成功编译: {source_file} 为 {output_file}")
                except subprocess.CalledProcessError as e:
                    compilation_failed.append(source_file)
                    print(f"编译 {source_file} 失败: {e}")

    # 打印编译统计信息
    print(" --------------------------- C文件编译完成 --------------------------- ")
    print(f"总计执行文件数: {total_files}")
    print(f"编译成功的文件数: {compiled_successfully}")
    print(f"编译失败的文件数: {len(compilation_failed)}")
    if compilation_failed:
        print("编译失败的文件列表:")
        for file in compilation_failed:
            print(file)

def compile_ll_files_in_directory(directory):
    total_files = 0
    compiled_successfully = 0
    compilation_failed = []

    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith(".ll"):
                total_files += 1
                source_file = os.path.join(root, filename)
                output_file = os.path.join(root, os.path.splitext(filename)[0] + "_complete.ll")
                compile_command = f"llvm-link {source_file} {cJSON_IR_path} -o {output_file} && llvm-dis {output_file} -o {output_file}"

                try:
                    subprocess.run(compile_command, shell=True, check=True)
                    compiled_successfully += 1
                    print(f"已成功编译: {source_file} 为 {output_file}")
                except subprocess.CalledProcessError as e:
                    compilation_failed.append(source_file)
                    print(f"编译 {source_file} 失败: {e}")

    # 打印编译统计信息
    print(" --------------------------- LL文件编译完成 --------------------------- ")
    print(f"总计执行文件数: {total_files}")
    print(f"编译成功的文件数: {compiled_successfully}")
    print(f"编译失败的文件数: {len(compilation_failed)}")
    if compilation_failed:
        print("编译失败的文件列表:")
        for file in compilation_failed:
            print(file)

# 调用函数来递归遍历并编译
compile_c_files_in_directory(current_directory)
compile_ll_files_in_directory(current_directory)
