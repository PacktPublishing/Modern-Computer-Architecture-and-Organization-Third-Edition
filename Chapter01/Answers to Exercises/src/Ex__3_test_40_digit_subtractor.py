#!/usr/bin/env python3

"""Ex__3_test_40_digit_subtractor.py: Answer to Ch 1 Ex 3."""

import os
import sys
import unittest

# Ensure the current directory is on sys.path
this_dir = os.path.dirname(os.path.abspath(__file__))
if this_dir not in sys.path:
    sys.path.insert(0, this_dir)

import Ex__3_40_digit_subtractor

class Test40DigitSubtractor(unittest.TestCase):
    def test_1(self):
        self.assertEqual(Ex__3_40_digit_subtractor.
        subtract_40_digits("0", "0"), "0")

    def test_2(self):
        self.assertEqual(Ex__3_40_digit_subtractor.
        subtract_40_digits("1", "0"), "1")

    def test_3(self):
        self.assertEqual(Ex__3_40_digit_subtractor.
        subtract_40_digits("1000000", "1"), "999999")

    def test_4(self):
        self.assertEqual(Ex__3_40_digit_subtractor.
        subtract_40_digits("0", "1"), 
        "9999999999999999999999999999999999999999")

if __name__ == '__main__':
    unittest.main()