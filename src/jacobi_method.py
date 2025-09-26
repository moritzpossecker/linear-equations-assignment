def get_start_vector(A, b):
    x = []
    for a_s in range(len(A)):
        a_i = b[a_s] / A[a_s][a_s]
        x.append(a_i)

    return x

def solve(A, b, tol=1e-3, max_iter=1000):
    x_alt = [1 for _ in range(len(A))]

    for iteration in range(max_iter):
        x = list(b)
        for i in range(len(A)):
            for j in range(len(A)):
                if j != i:
                    x[i] = x[i] - A[i][j] * x_alt[j]
            x[i] = x[i]/A[i][i]

        diff = max(abs(x[i] - x_alt[i]) for i in range(len(A)))
        if diff < tol:
            return x, iteration + 1

        x_alt = x

    return x_alt, max_iter
