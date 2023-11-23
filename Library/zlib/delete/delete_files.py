import os

def delete_files_with_extensions(directory):
    # 获取指定目录下的所有文件
    files = [f for f in os.listdir(directory) if os.path.isfile(os.path.join(directory, f))]
    for file in files:
        file_path = os.path.join(directory, file)
        # 检查文件类型和扩展名
        _, file_extension = os.path.splitext(file_path)
        if file_extension not in ('.txt', '.py', '.h', '.c', '.ll'):
            # 删除文件
            os.remove(file_path)
            print(f"删除文件: {file_path}")

if __name__ == "__main__":
    target_directory = "//home/kansx/Fuzz/APISpecFuzz/Library/zlib/Cpps_manual/gzdopen"  # 替换为你要操作的目录
    delete_files_with_extensions(target_directory)
