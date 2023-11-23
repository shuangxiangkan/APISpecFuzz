import os


def list_subdirectories(folder_path):
    subdirectories = [f for f in os.listdir(folder_path) if os.path.isdir(os.path.join(folder_path, f))]
    return subdirectories


def write_to_file(file_path, data):
    with open(file_path, 'w') as file:
        for item in data:
            file.write("%s\n" % item)


def main():
    folder_path = "/home/kansx/Fuzz/APISpecFuzz/Library/zlib/Cpps_manual"

    if not os.path.exists(folder_path):
        print(f"文件夹 '{folder_path}' 不存在")
        return

    subdirectories = list_subdirectories(folder_path)

    if not subdirectories:
        print(f"文件夹 '{folder_path}' 中没有子文件夹")
        return

    output_file_path = "/Library/zlib/afl_clang_fast_instrument/functions.txt"
    write_to_file(output_file_path, subdirectories)
    print(f"子文件夹的名字已写入到 {output_file_path}")


if __name__ == "__main__":
    main()
