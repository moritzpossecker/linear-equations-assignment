= Gauß-Seidel-Verfahren

Das Gauß-Seidel-Verfahren wird auch als Einzelschritt-Schritt-Verfahren bezeichnet, weil es ausnutzt, dass zum Zeitpunkt der Berechnung von $x_j^t$, die Komponenten $x_r^t ", mit " r < j$ für diese Iteration bereits bekannt sind. Für die Berechnung von $x_2^t$ wird also ausgenutzt, dass $x_1^t$ bereits bekannt ist. Es werden also nur die nötigen noch nicht errechneten Werte des letzten Iterationsschritts verwendet. Dadurch soll eine schnellere Konvergenz erreicht werden.

Es ergibt sich folgende Iterationsvorschrift:


$ x_j^t = frac(1, a_(j j)) (
  b_j
  - underbrace(sum_(k < j)^(n) a_(j k) x_k^(t), "1")
  - underbrace(sum_(k > j)^(n) a_(j k) x_k^(t-1), "2")
) $

- 1: Bereits bekannte Werte aus diesem Iterationsschritt  
- 2: Noch nicht bekannte Werte $->$ Verwendung der letzten Iteration

@perlt

Das Gauß-Seidel Verfahren liefert bereits nach 5 Iterationen das Ergebnis

$ x^5 = mat(1.0001; 2.0000; -1.0000; 1.0000) . $