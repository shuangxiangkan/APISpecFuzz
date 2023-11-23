import subprocess
import os

def link_bitcode_files(directory, output_file='combined_all.bc'):
    # 收集目录中的所有 .bc 文件
    bitcode_files = [os.path.join(directory, f) for f in os.listdir(directory) if f.endswith('.bc')]

    # 构建 llvm-link 命令
    command = ['llvm-link', '-o', output_file] + bitcode_files

    # 执行命令
    try:
        subprocess.run(command, check=True)
        print(f"合并完成，输出文件：{output_file}")
    except subprocess.CalledProcessError as e:
        print(f"合并失败：{e}")

# 使用示例
link_bitcode_files('/home/kansx/Fuzz/APISpecFuzz/Library/libmagic/file-5.45/')  # 将此路径替换为您的 .bc 文件所在目录
