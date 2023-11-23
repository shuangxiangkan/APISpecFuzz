import os
import shutil

def delete_default_folders(directory):
    # 检查目录是否存在
    if not os.path.exists(directory):
        print(f"目录 {directory} 不存在")
        return

    # 遍历目录树
    for root, dirs, files in os.walk(directory, topdown=False):
        for name in dirs:
            if name == "default":
                full_path = os.path.join(root, name)
                try:
                    shutil.rmtree(full_path)
                    print(f"已删除文件夹: {full_path}")
                except Exception as e:
                    print(f"删除文件夹 {full_path} 时出错: {e}")

# 使用示例
directory_to_search = '/home/kansx/Fuzz/APISpecFuzz/Library/zlib_backup/Cpps_manual'  # 替换为您要搜索的目录的路径
delete_default_folders(directory_to_search)
