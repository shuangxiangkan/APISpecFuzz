import zlib

# Example data to compress
data1 = "Data for the first file"
data2 = "Data for the second file"

# Compress the data using zlib
compressed_data1 = zlib.compress(data1.encode())
compressed_data2 = zlib.compress(data2.encode())

# Write the compressed data to binary files
with open("compressed1.bin", "wb") as file1:
    file1.write(compressed_data1)

with open("compressed2.bin", "wb") as file2:
    file2.write(compressed_data2)
