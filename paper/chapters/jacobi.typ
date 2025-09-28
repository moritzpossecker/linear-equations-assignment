#import "@preview/codelst:2.0.2": sourcecode

= Jacobi-Verfahren

Das Jacobi-Verfahren erzeugt in jedem Schritt einen neuen Lösungsvektor $x$ mit Verwendung der Elemente aus der vorherigen Iteration. Es wird deshalb auch Gesamtschritt-Verfahren genannt. (Der Unterschied wird nach Betrachtung des Gauß-Seidel-Verfahrens noch deutlicher.)

Das an Position $j$ stehende Element der $t$-ten Iteration wird durch folgende Iterationsvorschrift berechnet:

$ x_j^t = 1/a_(j j) (b_j - sum_(k=1, k != j)^(n) a_(j k)x_k^(t-1)) $ @perlt

In diesem Beispiel ergibt sich also für $x_1$ in der ersten Iteration:

$ x_1^1 = 1/10 (6 + 1 times 1 - 2 times 1 - 0 times 1) = 5/10 = 1/2 $

In Python übertragen ergibt sich folgender Algorithmus:

#figure(
  caption: "Jacobi-Verfahren in Python",
  sourcecode[
    ```py
n = len(A)
x = [1 for _ in range(n)]

for iteration in range(max_iter):
  x_it = []
  for j in range(n):
    sum_k = 0
    for k in range(n):
      if k != j:
        sum_k += A[j][k] * x[k]
    x_j = 1/A[j][j] * (b[j] - sum_k)
    x_it.insert(j, x_j)
```
]
)

In Zeile 1 wird die Dimension $n$ des gegebenen Gleichungssystem bestimmt und in Zeile 2 wird der Startvektor $x$ mit den Werten 1 angelegt. In Zeile 4 wird die Iteration begonnen. Der Parameter `max_iter` stellt die maximal durchzuführenden Iterationen dar, falls die Abbruchbedingung nicht erreicht wird. Im nächsten Schritt wird der neue, zunächst leere Lösungsvektor $x^t$ angelegt. Diese Schritte sind nicht spezifisch für dieses Verfahren.

In den weiteren Zeilen wurde die Iterationsvorschrift übersetzt, um den Vektor $x^t$, also die Variable `x_it` zu befüllen. 

#figure(
  caption: "Abbruchbedingung in Python",
  sourcecode[
    ```py
diff = max(abs(x_it[j] - x[j]) for j in range(n))
if diff < tol:
  return x_it, iteration + 1
```
]
)

In jeder Iteration wird abschließend noch die Abbruchbedingung überprüft. Hierfür wird die größte Differenz aus aktuellen $x_j$ und $x_j$ der vorherigen Iteration ermittelt. Ist die Differenz für alle Werte kleiner als die vorgegebene Genauigkeit von $10^(-3)$, gilt die Abbruchbedingung als erfüllt. Dann wird der Ergebnisvektor `x_it` zusammen mit der Anzahl an benötigten Iterationen zurückgegeben. Wenn nicht, wird das Ergebnis der aktuellen Iteration der Variable `x` zugewiesen und der nächste Durchlauf startet auf dieser Basis.

Der Algorithmus erreicht die Abbruchbedingung nach 10 Iterationen mit dem Ergebnis

$ x^10 = mat(1.0001; 1.9998; -0.9999; 0.9998) . $
