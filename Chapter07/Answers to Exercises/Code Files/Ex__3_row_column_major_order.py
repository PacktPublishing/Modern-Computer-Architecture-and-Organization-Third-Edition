#!/usr/bin/env python3

"""Ex__3_row_column_major_order.py: Answer to Ch 7 Ex 3."""

# Typical output from a run of this script:
# Row-major time   : 1.976 seconds
# Column-major time: 2.477 seconds
# Row-major is faster by 20.25%

import numpy as np
import time

dim = 4000
print(f"Creating {dim} x {dim} int32 matrix...")
matrix = np.zeros((dim, dim), dtype=np.int32)

# ----------------------------
# Row-major traversal (faster)
# ----------------------------
t0 = time.perf_counter()

for i in range(dim):
    for j in range(dim):
        matrix[i, j] = i + j

row_time = time.perf_counter() - t0
print(f"Row-major time   : {row_time:.3f} seconds")

# Clear the matrix
matrix.fill(0)

# -------------------------------
# Column-major traversal (slower)
# -------------------------------
t0 = time.perf_counter()

for j in range(dim):
    for i in range(dim):
        matrix[i, j] = i + j

col_time = time.perf_counter() - t0
print(f"Column-major time: {col_time:.3f} seconds")

# -----------------------------
# Report results
# -----------------------------
if row_time < col_time:
    pct = 100 * (col_time - row_time) / col_time
    print(f"Row-major is faster by {pct:.2f}%")
else:
    pct = 100 * (row_time - col_time) / row_time
    print(f"Column-major is faster by {pct:.2f}%")
