import os
import subprocess

wpa_path = "/home/kansx/SVF-Tools/SVF-latest/Debug-build/bin/wpa"
cJSON_IR_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/cJSON.ll"
cJSON_h_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON"
cJSON_SVF_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF"

# 获取当前脚本所在的目录
current_directory = os.path.dirname(os.path.abspath(__file__))

def compile_c_files_in_directory(directory):
    i = 0
    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith("_complete.ll"):
                source_file = os.path.join(root, filename)
                # output_file = os.path.join(root, os.path.splitext(filename)[0] + ".ll")
                compile_command = f"{wpa_path} -ander -stat=false {source_file}"
                # compile_command = f"{afl_clang_fast_path} -w {source_file} -o {output_file}"

                try:
                    print(f"正在执行: {source_file}")
                    subprocess.run(compile_command, shell=True, check=True)
                    print(f"已成功执行: {source_file}")
                except subprocess.CalledProcessError as e:
                    print(f"执行 {source_file} 失败: {e}")
                i += 1


    print("共执行了",i,"个文件")
    print(" --------------------------- 执行完成 --------------------------- ")

# 调用函数来递归遍历并编译
compile_c_files_in_directory(current_directory)
