__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 5: Hardware-Software Interface

TMost computer software is not written at the processor instruction level in assembly language. Almost all the applications we work with daily are written in one high-level programming language or another, relying on pre-existing libraries of capabilities that application programmers build upon during the software development process. Practical programming environments, comprising high-level languages and their associated libraries, provide numerous services such as disk **input/output (I/O)**, network communication, and user interaction, all of which are easily accessible from program code.
This chapter describes the software layers that implement these features, beginning with processor instructions within device drivers. This chapter covers several key aspects of operating systems, including booting, process scheduling, multithreading, and multiprocessing.
After completing this chapter, you will understand the services provided by operating systems and the functions of the **Basic Input/Output System (BIOS)** and the **Unified Extensible Firmware Interface (UEFI)** firmware. You will have learned how threads of execution function at the processor level and how multiple processor cores coordinate within a computer system. You will also gain a broad understanding of the steps involved in securely booting an operating system, beginning with the first instruction executed.
We will cover the following topics:

* Device drivers
* BIOS
* The boot process
* Operating systems
* Processes and threads
* Multiprocessing

# Chapter Files
[bcdedit output](Chapter%20Files/bcdedit_output.md) is an example of the **BCD (boot configuration data)** information stored on a Windows 10 system.

# Answers to Exercises
The links below lead to the questions and answers for the end-of-chapter exercises.

[Exercise 1](Answers%20to%20Exercises/Ex__1_bios_info.md): Enter your system’s BIOS or UEFI, identify supported features, then exit without saving changes.

[Exercise 2](Answers%20to%20Exercises/Ex__2_process_pid.md): List the running processes on your system and identify the PID of the process that generated the listing.
