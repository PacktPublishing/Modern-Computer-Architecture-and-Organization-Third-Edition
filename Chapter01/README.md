__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 1: Introducing Computer Architecture

The architectures of automated computing systems have evolved from the first mechanical calculators constructed over four centuries ago to the broad array of modern electronic computer technologies we use directly and indirectly every day. Along the way, there have been periods of incremental technological improvement interspersed with disruptive advances that drastically altered the industry’s trajectory. We can expect these trends to persist in the years to come.

In the 1980s, during the early days of personal computing, students and technical professionals eager to learn about computer technology had a limited range of tools available for this purpose. If they had a computer of their own, it was probably an IBM PC, an Apple II, a TRS-80, or a Commodore product. If they worked for an organization with a computing facility, they might have used an IBM mainframe or a Digital Equipment Corporation VAX minicomputer. These examples, together with a limited number of similar systems, encompassed most people’s exposure to the computer systems of the time.

Today, numerous specialized computing architectures exist to address the diverse needs of users. We carry miniature computers in our pockets and purses that can place phone calls, record video, and function as full participants on the internet. Personal computers remain popular in a format that is outwardly similar to those of past decades. Today’s PCs, however, are orders of magnitude more capable than earlier generations in terms of computing power, memory size, disk space, graphics performance, and communication ability. These capabilities enable modern personal computers to perform tasks that would have been inconceivable on early PCs, such as real-time generation of high-resolution 3D video.

Companies offer web services to hundreds of millions of from vast warehouses filled with thousands of tightly coordinated computer systems capable of responding to a constant stream of user requests with extraordinary speed and precision. Machine learning systems are trained through the analysis of enormous quantities of data to perform complex activities such as driving automobiles and chatting with users in a human-like manner.

This chapter begins with a presentation of some key historical computing devices and the technological leaps associated with them. We then explore modern trends arising from these advances, introduce the fundamental concepts of computer architecture, and provide an overview of the 6502 microprocessor along with its instruction set. The following topics will be covered in this chapter:

* The evolution of automated computing devices  
* Moore’s law
* Computer architecture

# Chapter Files

The following 6502 assembly code snippets appear in Table 1.4:

| File                                                                             | Description                             |
|----------------------------------------------------------------------------------|-----------------------------------------|
| [add-with-no-carry.asm](src/add-with-no-carry.asm)                               | 8-bit addition with no Carry input.     |
| [add-with-carry.asm](src/add-with-carry.asm)                                     | 8-bit addition with a Carry input.      |
| [subtract-with-no-borrow.asm](src/subtract-with-no-borrow.asm)                   | 8-bit subtraction with no Borrow input. |
| [subtract-with-borrow.asm](src/subtract-with-borrow.asm)                         | 8-bit subtraction with a Borrow input.  |
| [add-with-unsigned-overflow.asm](src/add-with-unsigned-overflow.asm)             | Addition with unsigned overflow.        |
| [subtract-with-unsigned-underflow.asm](src/subtract-with-unsigned-underflow.asm) | Subtraction with unsigned underflow.    |
| [add-with-signed-overflow.asm](src/add-with-signed-overflow.asm)                 | Addition with signed overflow.          |
| [subtract-with-signed-underflow.asm](src/subtract-with-signed-underflow.asm)     | Subtraction with signed underflow.      |

Try running these code examples at https://skilldrick.github.io/easy6502/

# Answers to Exercises
The links below lead to the questions and answers for the end-of-chapter exercises.

[Exercise 1](Answers%20to%20Exercises/Ex__1_single_digit_adder.md)

[Exercise 2](Answers%20to%20Exercises/Ex__2_40_digit_adder.md)

[Exercise 3](Answers%20to%20Exercises/Ex__3_40_digit_subtractor.md)

[Exercise 4](Answers%20to%20Exercises/Ex__4_16_bit_add.md)

[Exercise 5](Answers%20to%20Exercises/Ex__5_16_bit_sub.md)

[Exercise 6](Answers%20to%20Exercises/Ex__6_32_bit_add.md)