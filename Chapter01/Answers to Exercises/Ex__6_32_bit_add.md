__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 1, Exercise 6

Write 6502 assembly code to store two 32-bit integers at addresses \$00-03 and \$04-\$07 and add them, storing the result in \$08-\$0B. Use a looping construct, including a label and a branch instruction, to iterate over the bytes of the two values being added. Search the internet for the details of the 6502 decrement and branch instructions and the use of labels in assembly language. Hint: The 6502 zero-page indexed addressing mode works well in this application.

# Answer
See the 6502 assembly file [Ex__6_32_bit_addition.asm](src/Ex__6_32_bit_addition.asm) for the 32-bit addition code.

Try running this code at https://skilldrick.github.io/easy6502/