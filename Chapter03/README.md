__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 3: Processor Elements

This chapter continues our progress toward a comprehensive understanding of modern processor architectures. Building upon the basic digital circuits introduced in Chapter _2, Digital Logic_, we discuss the functional units of a generic computer processor. Concepts related to the instruction set and register set are introduced, followed by a discussion of the steps involved in instruction loading, decoding, execution, and sequencing. Addressing modes and instruction categories are discussed in the context of the 6502 processor architecture. We choose to focus on this venerable processor for its structural simplicity and clarity, which permits us to consider basic concepts without the distractions of the complex features of modern processors. The requirement for interrupt handling is introduced using 6502 interrupt processing as an example. Standard approaches that modern processors employ for **input/output (I/O)** operations are presented, with a focus on **direct memory access (DMA)**.

After completing this chapter, you will understand basic processor architectural concepts and the structure of instruction sets. You will have learned the principal categories of processor instructions, why interrupt processing is essential, and will understand the basics of I/O operations.
The following topics will be covered in this chapter:

The following topics will be covered in this chapter:
* A simple processor
* The instruction set
* Addressing modes
* Instruction categories
* Interrupt processing
* Input/output operations

# Chapter Files
[ALU.vhdl](Chapter%20Files/ALU.vhdl) is the VHDL implementation of the 6502-like ALU discussed in the *Arithmetic logic unit* section of Chapter 3.

The following files are 6502 assembly language examples from this chapter:

| File | Description |
|------|-------------|
| [immediate_addressing_mode.asm](Chapter%20Files/immediate_addressing_mode.asm) | Immediate addressing mode. |
| [absolute_addressing_mode.asm](Chapter%20Files/absolute_addressing_mode.asm) | Absolute addressing mode. |
| [absolute_indexed_addressing_mode.asm](Chapter%20Files/absolute_indexed_addressing_mode.asm) | Absolute indexed addressing mode. |
| [looping_absolute_indexed_addressing.asm](Chapter%20Files/looping_absolute_indexed_addressing.asm) | Looping absolute indexed addressing mode. |
| [indirect_indexed_addressing_mode.asm](Chapter%20Files/indirect_indexed_addressing_mode.asm) | Indirect indexed addressing mode. |
| [interrupt_handler.asm](Chapter%20Files/interrupt_handler.asm) | Interrupt handler. |
| [brk_handler.asm](Chapter%20Files/brk_handler.asm) | Break handler. |

# Answers to Exercises
The links below lead to the questions and answers for the end-of-chapter exercises.

[Exercise 1](Answers%20to%20Exercises/Ex__1_signed_addition.md): Determine whether adding a positive and a negative signed 8‑bit value can ever overflow the −128 to +127 range.

[Exercise 2](Answers%20to%20Exercises/Ex__2_signed_overflow.md): Show how signed overflow relates to the most significant bits of the operands.

[Exercise 3](Answers%20to%20Exercises/Ex__3_vhdl_overflow.md): Check whether the VHDL ALU’s `V` flag logic is correct by testing specific overflowing and non‑overflowing addition operations.

[Exercise 4](Answers%20to%20Exercises/Ex__4_checksum_alg.md): Using 6502 assembly, implement a checksum validation algorithm that computes the sum of the bytes in a block of memory.

[Exercise 5](Answers%20to%20Exercises/Ex__5_checksum_subroutine.md): Refactor the checksum validator into a reusable subroutine that is callable using `JSR` and `RTS`.

[Exercise 6](Answers%20to%20Exercises/Ex__6_checksum_tests.md): Design and run tests that evaluate the checksum subroutine’s behavior and establish its minimum and maximum supported block sizes.
