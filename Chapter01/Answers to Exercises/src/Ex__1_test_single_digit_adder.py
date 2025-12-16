#!/usr/bin/env python3

"""Ex__1_test_single_digit_adder.py: Answer to Ch 1 Ex 1."""

import os
import sys
import unittest

# Ensure the current directory is on sys.path
this_dir = os.path.dirname(os.path.abspath(__file__))
if this_dir not in sys.path:
    sys.path.insert(0, this_dir)
    
import Ex__1_single_digit_adder


class TestSingleDigitAdder(unittest.TestCase):
    def test_1(self):
        self.assertEqual(Ex__1_single_digit_adder.
                         add_digits(0, 0), (0, 0))

    def test_2(self):
        self.assertEqual(Ex__1_single_digit_adder.
                         add_digits(0, 1), (1, 0))

    def test_3(self):
        self.assertEqual(Ex__1_single_digit_adder.
                         add_digits(1, 0), (1, 0))

    def test_4(self):
        self.assertEqual(Ex__1_single_digit_adder.
                         add_digits(1, 2), (3, 0))

    def test_5(self):
        self.assertEqual(Ex__1_single_digit_adder.
                         add_digits(5, 5), (0, 1))

    def test_6(self):
        self.assertEqual(Ex__1_single_digit_adder.
                         add_digits(9, 1), (0, 1))

    def test_7(self):
        self.assertEqual(Ex__1_single_digit_adder.
                         add_digits(9, 9), (8, 1))


if __name__ == '__main__':
    unittest.main()
