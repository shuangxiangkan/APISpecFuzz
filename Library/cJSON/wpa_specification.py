import os
import subprocess

wpa_path = "/home/kansx/SVF-Tools/SVF-latest/Debug-build/bin/wpa"
cJSON_IR_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/cJSON.ll"
cJSON_h_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON"
cJSON_SVF_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF"

# 获取当前脚本所在的目录
current_directory = os.path.dirname(os.path.abspath(__file__))

def write_and_print(message, file):
    print(message)
    file.write(message + "\n")

def compile_c_files_in_directory(directory, report_file_path):
    executed_successfully = []
    execution_failed = []

    with open(report_file_path, 'w') as report_file:
        for root, _, files in os.walk(directory):
            for filename in files:
                if filename.endswith("_specification.ll"):
                    source_file = os.path.join(root, filename)
                    compile_command = f"{wpa_path} -ander -stat=false {source_file}"

                    try:
                        subprocess.run(compile_command, shell=True, check=True)
                        executed_successfully.append(source_file)
                        write_and_print(f"已成功执行: {source_file}", report_file)
                    except subprocess.CalledProcessError as e:
                        execution_failed.append(source_file)
                        write_and_print(f"执行 {source_file} 失败: {e}", report_file)

        # 写入统计信息
        write_and_print(" --------------------------- wpa_specification 执行完成 --------------------------- ", report_file)
        write_and_print(f"总计执行文件数: {len(executed_successfully) + len(execution_failed)}", report_file)
        write_and_print(f"执行成功的文件数: {len(executed_successfully)}", report_file)
        write_and_print("执行成功的文件列表:", report_file)
        for file_path in executed_successfully:
            write_and_print(file_path, report_file)
        write_and_print(f"执行失败的文件数: {len(execution_failed)}", report_file)
        write_and_print("执行失败的文件列表:", report_file)
        for file_path in execution_failed:
            write_and_print(file_path, report_file)

# 调用函数来递归遍历并执行，同时指定报告文件的路径
report_file_path = '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/wpa_specification.txt'  # 替换为您希望保存报告的文件路径
compile_c_files_in_directory(current_directory, report_file_path)
