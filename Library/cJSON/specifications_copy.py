import os

def copy_all_files_to_one(src_directory, dest_file):
    # 确保源目录存在
    if not os.path.exists(src_directory):
        print(f"源目录 {src_directory} 不存在")
        return

    with open(dest_file, 'w') as outfile:
        # 遍历源目录
        for root, dirs, files in os.walk(src_directory):
            for filename in files:
                file_path = os.path.join(root, filename)

                # 确保不是目录
                if os.path.isfile(file_path):
                    with open(file_path, 'r') as infile:
                        outfile.write(infile.read())
                        outfile.write("\n")  # 在文件内容之间添加换行符

    print(f"所有文件已被复制到 {dest_file}")

# 使用示例
source_directory = '/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/specifications_instrument'  # 替换为源目录的路径
destination_file = ('/home/kansx/Fuzz/APISpecFuzz/Library/cJSON/cJSON_specifications.c')  # 替换为目的文件的路径
copy_all_files_to_one(source_directory, destination_file)
