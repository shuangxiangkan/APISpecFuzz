import subprocess
import os
import sys

def run_command(command):
    try:
        subprocess.run(command, check=True, shell=True)
    except subprocess.CalledProcessError as e:
        print(f"An error occurred while executing: {e.cmd}")
        print(f"Error message: {e.stderr}")

def compile_c_files(directory):
    for filename in os.listdir(directory):
        if filename.endswith(".c"):
            input_file_path = os.path.join(directory, filename)
            run_command(f'/home/kansx/Fuzz/AFLplusplus/afl-clang-fast -S -emit-llvm -c {input_file_path} -o {filename}.ll')
            run_command(f'llvm-link {filename}.ll /home/kansx/Fuzz/APISpecFuzz/Library/zlib/zlib_1.3.ll -o linked.bc')
            run_command(f'llc -filetype=obj linked.bc -o linked.o')
            run_command('/home/kansx/Fuzz/AFLplusplus/afl-clang-fast linked.o -o linked')
            # run_command('./linked')

def main():
    if len(sys.argv) != 2:
        print("Usage: python script.py <directory_path>")
        return

    input_directory = sys.argv[1]

    if not os.path.exists(input_directory):
        print(f"目录 '{input_directory}' 不存在")
        return

    compile_c_files(input_directory)

if __name__ == "__main__":
    main()
