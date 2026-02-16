__Modern Computer Architecture and Organization Third Edition__, by Jim Ledin. Published by Packt Publishing.
# Chapter 18, Exercise 4

Create a program using the TensorFlow library that trains the CNN developed in [Exercise 3](Ex__3_create_network.md) and test the resulting model using the CIFAR-10 test images. Determine the percentage of test images that the CNN classifies correctly.

# Answer
See the Python file [Ex__4_train_model.py](Code%20Files/Ex__4_train_model.py) for the code to create, train, and test the CNN model.

To run the program, assuming **Python** is installed and is in your path, execute the command `python Ex__4_train_model.py`

Your results should demonstrate an accuracy of approximately 70%. For such a simple CNN, this represents a significant improvement over random guessing, which would yield an expected accuracy of 10%.

This is the output of a test run:
```
C:\>python Ex__4_train_model.py
Epoch 1/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 16s 10ms/step - accuracy: 0.4334 - loss: 1.5440 - val_accuracy: 0.5466 - val_loss: 1.2493
Epoch 2/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 17s 11ms/step - accuracy: 0.5781 - loss: 1.1821 - val_accuracy: 0.6201 - val_loss: 1.0751
Epoch 3/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 19s 12ms/step - accuracy: 0.6405 - loss: 1.0171 - val_accuracy: 0.6507 - val_loss: 0.9957
Epoch 4/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 20s 12ms/step - accuracy: 0.6779 - loss: 0.9173 - val_accuracy: 0.6666 - val_loss: 0.9529
Epoch 5/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 20s 12ms/step - accuracy: 0.7030 - loss: 0.8458 - val_accuracy: 0.6856 - val_loss: 0.9015
Epoch 6/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 21s 13ms/step - accuracy: 0.7235 - loss: 0.7857 - val_accuracy: 0.6900 - val_loss: 0.8831
Epoch 7/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 20s 12ms/step - accuracy: 0.7420 - loss: 0.7346 - val_accuracy: 0.6947 - val_loss: 0.8838
Epoch 8/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 20s 13ms/step - accuracy: 0.7588 - loss: 0.6909 - val_accuracy: 0.7079 - val_loss: 0.8582
Epoch 9/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 20s 13ms/step - accuracy: 0.7711 - loss: 0.6515 - val_accuracy: 0.7140 - val_loss: 0.8429
Epoch 10/10
1563/1563 ━━━━━━━━━━━━━━━━━━━━ 20s 12ms/step - accuracy: 0.7845 - loss: 0.6104 - val_accuracy: 0.7034 - val_loss: 0.8887
313/313 - 2s - 6ms/step - accuracy: 0.7034 - loss: 0.8887

===============================
| Validation accuracy: 70.34% |
===============================

C:\>
```

This figure displays the classification accuracy of the CNN on the training images (*Accuracy*) and on the test images (*Validation Accuracy*) after each of the 10 training epochs:

![CNN training accuracy](Code%20Files/training_accuracy.png)
