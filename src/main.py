import matplotlib.pyplot as plt

import jacobi_method
import gauss_seidel_method
import successive_overrelaxation_method as sor

A = ((10, -1, 2, 0), (-1, 11, -1, 3), (2, -1, 10, -1), (0, 3, -1, 8))
b = (6, 25, -11, 15)

x_sol_j, iters_j, errors_j = jacobi_method.solve(A, b)
x_sol_gs, iters_gs, errors_gs = gauss_seidel_method.solve(A, b)
x_sol_sor, iters_sor, errors_sor = sor.solve(A, b, 1.05)

print('Jacobi: ', x_sol_j, f' nach {iters_j} Iterationen')
print('Gauß-Seidel: ', x_sol_gs, f' nach {iters_gs} Iterationen')
print('SOR: ', x_sol_sor, f' nach {iters_sor} Iterationen')


# Zeichnen des Graphen

plt.plot(range(1, iters_j + 1), errors_j, marker='o', label='Jacobi')
plt.plot(range(1, iters_gs + 1), errors_gs, marker='s', label='Gauss-Seidel')
plt.plot(range(1, iters_sor + 1), errors_sor, marker='^', label='SOR (ω=1.05)')

plt.yscale('log')
plt.xlabel('Iteration')
plt.ylabel('Maximaler Fehler')
plt.title('Konvergenzvergleich: Jacobi, Gauß-Seidel, SOR')
plt.grid(True)
plt.legend()
plt.savefig('comparison.png')
plt.show()