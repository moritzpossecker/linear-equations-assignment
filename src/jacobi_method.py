def solve(A, b, tol=1e-3, max_iter=1000) -> (list, int, list):
    # Ermittlung der Dimension n des Systems
    n = len(A)
    # Anlegen des Startvektors x mit den Werten 1 für alle x
    x = [1 for _ in range(n)]
    # Anlegen einer leeren Liste zur Sammlung der Abweichungen (für die Darstellung
    errors = []

    for iteration in range(max_iter):
        # Anlegen eines neuen leeren Lösungsvektors für diese Iteration
        x_it = []
        # Übersetzung der mathematischen Formel zur Berechnung von x_j
        for j in range(n):
            sum_k = 0
            for k in range(n):
                if k != j:
                    sum_k += A[j][k] * x[k]
            x_j = 1/A[j][j] * (b[j] - sum_k)
            x_it.insert(j, x_j)

        # Überprüfung der Abbruchbedingung mithilfe der größten Differenz zur letzten Iteration
        diff = max(abs(x_it[j] - x[j]) for j in range(n))
        errors.append(diff)
        if diff < tol:
            return x_it, iteration + 1, errors

        x = x_it

    return x, max_iter, errors
