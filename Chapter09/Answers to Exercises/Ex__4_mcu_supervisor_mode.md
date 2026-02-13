__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 9, Exercise 4

Do i.MX RT1060 processors support supervisor mode instruction execution? Explain your answer.

# Answer
Performing a search for **supervisor** in the i.MX RT1060 processor reference manual produces a few hits. However, all of these uses refer to access restrictions for specific subsystems, such as the FLEXCAN module.

Supervisor mode in the i.MX RT1060 processor does not operate at the instruction execution level; therefore **these processors do not implement supervisor mode instruction execution**.