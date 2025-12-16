__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 1, Exercise 4

6502 assembly language references data in memory locations using an operand value containing the address (without the # character, which indicates an immediate value). For example, the LDA \$00 instruction loads the byte at memory address \$00 into the A register. STA \$01 stores the byte in A into address \$01. Addresses can be any value in the range 0 to \$FFFF, assuming memory exists at the address. Using your 6502 emulator, write 6502 assembly code to store a 16-bit value in addresses \$00-\$01, store a second value in addresses \$02-\$03, then add the two values and store the result in \$04-\$05. Be sure to propagate the carry from the first byte to the second. Ignore any carry from the 16-bit result. Test with the expressions \$0000+\$0001, \$00FF+\$0001, and \$1234+\$5678.

# Answer
See the 6502 assembly file [Ex__4_16_bit_addition.asm](src/Ex__4_16_bit_addition.asm) for the 16-bit addition code.

Try running this code at https://skilldrick.github.io/easy6502/