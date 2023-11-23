import os
import subprocess

wpa_path = "/home/kansx/SVF-Tools/SVF/Debug-build/bin/wpa"
cJSON_IR_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/cJSON.ll"
cJSON_h_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON"
cJSON_SVF_path = "/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF"
current_directory = os.path.dirname(os.path.abspath(__file__))

def write_and_print(message, file):
    print(message)
    file.write(message + "\n")

def compile_files_in_directory(directory, report_file_path, file_suffix):
    executed_successfully = []
    execution_failed = []

    with open(report_file_path, 'w') as report_file:
        for root, _, files in os.walk(directory):
            for filename in files:
                if filename.endswith(file_suffix):
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
        write_and_print(f" --------------------------- wpa_{file_suffix} 执行完成 --------------------------- ", report_file)
        write_and_print(f"总计执行文件数: {len(executed_successfully) + len(execution_failed)}", report_file)
        write_and_print(f"执行成功的文件数: {len(executed_successfully)}", report_file)
        write_and_print("执行成功的文件列表:", report_file)
        for file_path in executed_successfully:
            write_and_print(file_path, report_file)
        write_and_print(f"执行失败的文件数: {len(execution_failed)}", report_file)
        write_and_print("执行失败的文件列表:", report_file)
        for file_path in execution_failed:
            write_and_print(file_path, report_file)

        return execution_failed

# 执行并记录失败的文件
failed_complete = compile_files_in_directory(current_directory, '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/complete_report.txt', "_complete.ll")
failed_specification = compile_files_in_directory(current_directory, '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/specification_report.txt', "_specification.ll")

# 找出不同的失败案例
unique_failures = set(failed_complete).symmetric_difference(set(failed_specification))

# 打印这些不同的失败案例
print("不同的失败案例:")
for failure in unique_failures:
    print(failure)
