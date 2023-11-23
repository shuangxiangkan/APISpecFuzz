import gzip
import random
import string

def generate_random_string(length):
    """生成指定长度的随机字符串"""
    return ''.join(random.choices(string.ascii_letters + string.digits, k=length))

def create_gz_file(filename, content):
    """创建一个含有特定内容的.gz文件"""
    with gzip.open(filename, 'wt') as f:
        f.write(content)

def main():
    for i in range(1, 4):
        # 生成随机长度的字符串，比如 100 到 1000 个字符
        random_content = generate_random_string(random.randint(100, 1000))
        # 创建.gz文件
        create_gz_file(f'random_file_{i}.gz', random_content)
        print(f'File random_file_{i}.gz created with random content.')

if __name__ == "__main__":
    main()
