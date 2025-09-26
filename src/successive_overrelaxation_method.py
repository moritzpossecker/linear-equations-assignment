import numpy as np

def get_l(A):
    L = []
    for i in range(len(A)):
        L.append([])
        for j in range(len(A[i])):
            if i > j:
                L[i].append(A[i][j])
            else:
                L[i].append(0)
    return L


def get_u(A):
    U = []
    for i in range(len(A)):
        U.append([])
        for j in range(len(A[i])):
            if i < j:
                U[i].append(A[i][j])
            else:
                U[i].append(0)
    return U


def get_d(A):
    U = []
    for i in range(len(A)):
        U.append([])
        for j in range(len(A[i])):
            if i == j:
                U[i].append(A[i][j])
            else:
                U[i].append(0)
    return U


def invert(M):
    return np.linalg.inv(M)


def multiply(A, B):
    return np.matmul(A, B)


def add(A, B):
    return np.add(A, B)


def get_t_and_c(A, b, w):
    L = np.array(get_l(A))
    U = np.array(get_u(A))
    D = np.array(get_d(A))

    DL_inv = np.linalg.inv(D + w * L)
    T = DL_inv @ (-(w * U + (w - 1) * D))
    C = DL_inv @ (w * np.array(b))
    return T, C


def solve(A, b, w, tol=1e-3, max_iter=1000):
    T, C = get_t_and_c(A, b, w)
    x_k = [1 for _ in range(len(A))]

    for iteration in range(max_iter):
        x_k_1 = add(multiply(T, x_k), C)

        diff = max(abs(x_k_1[i] - x_k[i]) for i in range(len(A)))
        if diff < tol:
            return x_k_1, iteration + 1

        x_k = x_k_1

    return x_k, max_iter
