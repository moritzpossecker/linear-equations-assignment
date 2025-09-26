import jacobi_method
import gauss_seidel_method
import successive_overrelaxation_method as sor

A = ((10, -1, 2, 0), (-1, 11, -1, 3), (2, -1, 10, -1), (0, 3, -1, 8))
b = (6, 25, -11, 15)

print(jacobi_method.solve(A, b))
print(gauss_seidel_method.solve(A, b))
print(sor.solve(A, b, 0.5))