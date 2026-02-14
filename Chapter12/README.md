__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 12: The RISC-V Architecture and Instruction Set

This chapter introduces the exciting, comparatively new RISC-V (pronounced _risk five_) processor architecture and instruction set. RISC-V is an entirely open-source specification for a reduced instruction set processor. Complete user-mode (non-privileged) and privileged instruction set specifications have been released, and a wide variety of hardware implementations are available. The architecture includes specifications for several instruction set extensions that support general-purpose computing, high-performance computing, and embedded applications. Commercially available processors implement many of these extensions. Individual developers can build FPGA-based systems that include a RISC-V processor running the same code as a hardware version of the processor.

The following topics will be covered in this chapter:
* The RISC-V architecture and applications
* The RISC-V base instruction set
* RISC-V extensions
* RISC-V variants
* 64-bit RISC-V
* Standard RISC-V configurations
* RISC-V assembly language
* Implementing RISC-V in a **Field-Programmable Gate Array (FPGA)**

After completing this chapter, you will understand the architecture and capabilities of the RISC-V processor and its optional extensions. You will have learned the basics of the RISC-V instruction set. You will understand how RISC-V can be tailored to support a variety of computer architectures, from tiny embedded systems to warehouse-scale cloud server datacenters. You will also understand how to implement a RISC-V processor in a low-cost FPGA board.

# Chapter Files
[hello_riscv.S](Chapter%20Files/hello_riscv.S) is the RISC-V **hello** assembly language program.

# Answers to Exercises
The links below lead to the questions and answers for the end-of-chapter exercises.

[Exercise 1](Answers%20to%20Exercises/Ex__1_hello_riscv.md): Install Freedom Studio and run the _hello.c_ RISC-V example.

[Exercise 2](Answers%20to%20Exercises/Ex__2_riscv_assembly.md): Replace _hello.c_ with RISC-V assembly and verify it prints a message.​

[Exercise 3](Answers%20to%20Exercises/Ex__3_riscv_expr.md): Write a RISC-V assembly program to compute [(129−66)×(445+136)]÷3[(129−66)×(445+136)]÷3 and print the hex result.
