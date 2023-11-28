import os
import subprocess

afl_fuzz_path = "/home/kansx/Fuzz/AFLplusplus/afl-fuzz"
jansson_executables_path = "/home/kansx/Fuzz/APISpecFuzz/Library/jansson/Cpps"

# 获取当前脚本所在的目录
# current_directory = os.path.dirname(os.path.abspath(__file__))

# 设置最大执行时间（秒）
max_execution_time = 10

# 递归遍历目录，查找并执行可执行文件
def execute_executables(directory):
    for root, _, files in os.walk(directory):
        for filename in files:
            file_path = os.path.join(root, filename)
            # 检查文件是否是可执行文件
            if os.access(file_path, os.X_OK):
                try:
                    print(f"执行文件: {file_path}")
                    # 使用timeout命令执行文件，设置最大执行时间
                    afl_fuzz_command = f"{afl_fuzz_path} -i {root}/in -o {root}/in {file_path}"
                    print(f"执行命令: {afl_fuzz_command}")
                    subprocess.run(f"timeout {max_execution_time}s {afl_fuzz_command}", shell=True)
                    print(f"{file_path} 执行成功")
                except Exception as e:
                    print(f"{file_path} 执行失败: {e}")

# 调用函数来递归遍历并执行
execute_executables(jansson_executables_path)
