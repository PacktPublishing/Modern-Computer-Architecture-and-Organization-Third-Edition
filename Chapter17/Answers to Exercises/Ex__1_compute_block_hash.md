__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 17, Exercise 1

Visit the blockchain explorer at https://bitaps.com and locate the list of recent blocks on that page. Click a block number to display the block header's hexadecimal representation and its SHA-256 hash. Copy both items and write a program to determine if the provided hash matches the header's hash. Remember to perform SHA-256 twice to compute the header hash.

# Answer
Block 919829 is used in this answer. The details for this block are at https://bitaps.com/000000000000000000007a1b4c7e65a6d1d9ed8d5ef14071008db0c25251df75

See the **Python** file [Ex__1_compute_block_hash.py](Code%20Files/Ex__1_compute_block_hash.py) for the block header hashing code.

To execute the program, assuming **Python** is installed and is in your path, execute the command `python Ex__1_compute_block_hash.py`

This is the output of a test run:
```
C:\>python Ex__1_compute_block_hash.py
Header hash: 000000000000000000007a1b4c7e65a6d1d9ed8d5ef14071008db0c25251df75
Computed hash: 000000000000000000007a1b4c7e65a6d1d9ed8d5ef14071008db0c25251df75
Hashes match!
```