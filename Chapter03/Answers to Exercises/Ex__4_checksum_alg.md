__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 3, Exercise 4

When transferring blocks of data over an error-prone transmission medium, it is common to use a checksum to determine whether any data bits were lost or corrupted during transmission. The checksum is typically appended to the transferred data record. One checksum algorithm uses these steps:

1.	Add all the bytes in the data record together, retaining only the lowest 8 bits of the sum
2.	Compute the checksum as the two’s complement of the 8-bit sum
3.	Append the checksum byte to the data record

After receiving a data block with the appended checksum, the processor can determine whether the checksum indicates a transmission error by simply summing all the bytes in the record, including the checksum. The checksum is valid if the lowest 8 bits of the sum are zero. Implement this checksum algorithm using 6502 assembly language. Assume the data bytes begin at the memory location stored in addresses `$10-$11` and the number of bytes (including the checksum byte) is provided as an input in the `X` register. Set the `A` register to 1 if the checksum is valid, and to 0 if it is invalid.


# Answer

See [Ex__4_checksum_alg.asm](Code%20Files/Ex__4_checksum_alg.asm)
