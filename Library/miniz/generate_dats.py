import random

def generate_random_dat_file(filename, size):
    """Generate a .dat file with random binary data."""
    with open(filename, 'wb') as file:
        file.write(random.randbytes(size))

# Generate two .dat files with random data
generate_random_dat_file('random1.dat', 1024)  # 1KB random data
generate_random_dat_file('random2.dat', 2048)  # 2KB random data

