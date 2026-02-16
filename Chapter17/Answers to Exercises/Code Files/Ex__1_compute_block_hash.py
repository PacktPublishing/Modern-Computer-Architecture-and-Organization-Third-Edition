#!/usr/bin/env python3

"""Ex__1_compute_block_hash.py: Answer to Ch 17 Ex 1."""

# This is a solution for Bitcoin block 919829
# (https://bitaps.com/000000000000000000007a1b4c7e65a6d1d9ed8d5ef14071008db0c25251df75)

import binascii
import hashlib    

# The block header copied from bitaps.com
header = ('00c0aa26e8b2bbb44d3a94c11892b2ffe226c38789c94'
          '782f7e601000000000000000000178d8aa3bbe911933e'
          'ea32a63d571a6e7d58127a8a7d9eefef6e0f8ea8ee8fc'
          'bad16f56821eb01177a78ad4efd4d07')

# The hash of the header copied from bitaps.com
header_hash = ('000000000000000000007a1b4c7e65a6'
               'd1d9ed8d5ef14071008db0c25251df75')

# Cut off any extra bytes beyond the 80-byte header
header = header[:160]

# Convert the header to binary
header = binascii.unhexlify(header)

# Compute the header hash (perform SHA-256 twice)
computed_hash = hashlib.sha256(header).digest()
computed_hash = hashlib.sha256(computed_hash).digest()

# Reverse the byte order
computed_hash = computed_hash[::-1]

# Convert the binary header hash to a hexadecimal string
computed_hash = \
    binascii.hexlify(computed_hash).decode("utf-8")

# Print the result
print('Header hash:   ' + header_hash)
print('Computed hash: ' + computed_hash)

if header_hash == computed_hash:
    result = 'Hashes match!'
else:
    result = 'Hashes DO NOT match!'

print(result)
