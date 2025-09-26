import numpy as np


def d_inv(A):
    D = []
    for i in range(len(A)):
        D.append([])
        for j in range(len(A[i])):
            if i == j:
                D[i].append(1/A[i][j])
            else:
                D[i].append(0)
    return D

def solve(A, b, tol=1e-3, max_iter=1000):
    x = [1 for _ in range(len(A))]
    D_inv = np.array(d_inv(A))

    for iteration in range(max_iter):

        x_k_1 = np.add(x, np.matmul(-D_inv, np.add(np.matmul(A, x), -np.array(b))))

        diff = max(abs(x_k_1[i] - x[i]) for i in range(len(A)))
        if diff < tol:
            return x, iteration + 1

        x = x_k_1

    return x, max_iter
