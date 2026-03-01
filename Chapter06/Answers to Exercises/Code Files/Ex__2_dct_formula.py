#!/usr/bin/env python3

"""Ex__2_dct_formula.py: Answer to Ch 6 Ex 2."""

# Output produced by this program:
# Index     0     1     2     3     4     5     6     7
# x        0.50  0.20  0.70 -0.60  0.40 -0.20  1.00 -0.30
# DCT(x)   1.70  0.42  0.64  0.49 -1.20  0.57 -0.49  2.33

import math

# Input vector
x = [0.5, 0.2, 0.7, -0.6, 0.4, -0.2, 1.0, -0.3]

# Compute the DCT coefficients
dct_coef = [[0.0 for i in range(len(x))] for j in
            range(len(x))]

for n in range(len(x)):
    for k in range(len(x)):
        dct_coef[n][k] = math.cos(
            (math.pi/len(x))*(n + 1/2)*k)

# Compute the DCT
x_dct = [0.0 for i in range(len(x))]
for k in range(len(x)):
    x_dct[k] = 0
    for n in range(len(x)):
        x_dct[k] += x[n]*dct_coef[n][k]

# Print the results
print('Index', end='')
for i in range(len(x)):
    print("%6d" % i, end='')

print('\nx      ', end='')
for i in range(len(x)):
    print("%6.2f" % x[i], end='')

print('\nDCT(x) ', end='')
for i in range(len(x)):
    print("%6.2f" % x_dct[i], end='')
