"""
NumPy Overview

NumPy is a fundamental package for scientific computing in Python, providing support for arrays, matrices, and mathematical functions.

Topics Covered:
1. Installation
2. Importing NumPy
3. Creating Arrays
4. Array Indexing and Slicing
5. Array Operations
6. Mathematical Functions
7. Array Manipulation
8. Linear Algebra
9. Random Numbers
"""

# 1. Installation
# Install NumPy using pip:
# pip install numpy

# 2. Importing NumPy
import numpy as np

# 3. Creating Arrays
array_1d = np.array([1, 2, 3, 4, 5])
array_2d = np.array([[1, 2, 3], [4, 5, 6]])
array_range = np.arange(0, 10, 2)
array_zeros = np.zeros((2, 3))
array_ones = np.ones((3, 2))
array_random = np.random.random((2, 2))

# 4. Array Indexing and Slicing
print(array_1d[0])
print(array_2d[1, 2])
print(array_1d[:3])
print(array_2d[0, :])

# 5. Array Operations
print(array_1d + 2)
print(array_1d * 2)
print(np.dot(array_1d, array_1d))

# 6. Mathematical Functions
print(np.sin(array_1d))
print(np.exp(array_1d))
print(np.log(array_1d))

# 7. Array Manipulation
print(array_1d.reshape((5, 1)))
print(array_2d.flatten())
print(np.concatenate((array_1d, array_1d)))

# 8. Linear Algebra
matrix_a = np.array([[1, 2], [3, 4]])
matrix_b = np.array([[5, 6], [7, 8]])

print(np.dot(matrix_a, matrix_b))
print(np.transpose(matrix_a))
print(np.linalg.inv(matrix_a))
eigenvalues, eigenvectors = np.linalg.eig(matrix_a)
print(eigenvalues)
print(eigenvectors)

# 9. Random Numbers
print(np.random.normal(0, 1, 5))
print(np.random.randint(0, 10, 5))
