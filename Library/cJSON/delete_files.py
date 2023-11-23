import os

def delete_ll_files(directory):
    # 检查目录是否存在
    if not os.path.exists(directory):
        print(f"目录 {directory} 不存在")
        return

    # 遍历目录树
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".ll"):
                file_path = os.path.join(root, file)
                try:
                    os.remove(file_path)
                    print(f"已删除文件: {file_path}")
                except Exception as e:
                    print(f"删除文件 {file_path} 时出错: {e}")

# 使用示例
directory_to_search = '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/Cpps_SVF'  # 替换为您要搜索的目录的路径
delete_ll_files(directory_to_search)
