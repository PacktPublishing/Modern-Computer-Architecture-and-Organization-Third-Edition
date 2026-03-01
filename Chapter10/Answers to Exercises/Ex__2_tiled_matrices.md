__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 10, Exercise 2

Show how two copies of the matrix multiplication shown in _Equation 6.7_ can be embedded within 16x16 _**A**_ and _**B**_ matrices, and where the results will appear within the 16x16 _**C**_ matrix. Draw the 16x16 _**A**_, _**B**_, and _**C**_ matrices as squares and show the weight matrices **_W<sub>IH1</sub>_** and **_W<sub>IH2</sub>_** as rectangles within the _**A**_ matrix. Draw the input vectors **_I<sub>1</sub>_** and **_I<sub>2</sub>_** similarly, as well as the output vectors **_H<sub>1</sub>_** and **_H<sub>2</sub>_**. This technique enables parallel evaluation of multiple network outputs within a single tensor core operation.

# Answer
The following diagram illustrates how the two network evaluations can be combined into a single tensor tile operation.

![Tiled matrix multiplication](Code%20Files/Ex__2_tiled_matrices.png)

Begin by filling the _**A**_ and _**B**_ matrices with zeroes. Insert the **_W<sub>IH1</sub>_** and **_W<sub>IH2</sub>_** matrices as the first and second sets of 4 rows in the first three columns of the _**A**_ matrix, respectively. Insert the vectors **_I<sub>1</sub>_** and **_I<sub>2</sub>_** into the first three rows in columns 1 and 2 of the _**B**_ matrix, respectively. After the multiplication has completed, the results appear in the _**C**_ matrix, where **_H<sub>1</sub>_** is located in rows 1-4 of column 1 and **_H<sub>2</sub>_** is located in rows 5-8 of column 2.