= Untersuchung der Konvergenzbedingungen für das System

Für die Konvergenz gibt es einfach nachzuprüfende Kriterien, die hinreichend, allerdings nicht notwendig sind. Die Kriterien untersuchen, ob das Verfahren bei beliebigem Startvektor $x^0 in CC^n$ und bei beliebigem $b in CC^n$ gegen $A^(-1)b$ konvergiert.

Das Jacobi-Verfahren konvergiert, wenn es das starke Zeilensummenkriterium, das starke Spaltensummenkriterium oder das Quadratsummenkriterium erfüllt. @konvergenz

Überprüfung des starken Zeilensummenkriteriums:

$ q_infinity := max_(i=1,...,n)sum_(j = 1, j != i)^(n) abs(a_(i j))/abs(a_(i i)) < 1  $

$ "Zeile 1: " (1 + 2 + 0) / 10 = 3/10 < 1 space checkmark $


$ "Zeile 2: " (1 + 1 + 3) / 11 = 5/11 < 1 space checkmark $


$ "Zeile 3: " (2 + 1 + 1) / 10 = 4/10 < 1 space checkmark $


$ "Zeile 4: " (0 + 3 + 1) / 8 = 4/8 < 1 space checkmark $

$->$ Starkes Zeilensummenkriterium erfüllt $->$ Das System erfüllt eine hinreichende Konvergenzbedingung für das Jacobi-Verfahren.

Beim Gauß-Seidel-Verfahren ist ebenfalls das starke Zeilensummenkriterium ein hinreichendes Kriterium. @konvergenz

Es konnte also nachgewiesen werden, dass das System jeweils eine hinreichende Konvergenzbedingung erfüllt. Die Verfahren werden also zu einer Lösung führen. Das SOR-Verfahren bedarf dabei keiner separaten Prüfung, da es eine Erweiterung des Gauß-Seidel-Verfahrens ist und deshalb konvergieren kann, sobald das Gauß-Seidel-Verfahren konvergiert. 

Für den Vergleich der Verfahren miteinander wird für jedes System der Startvektor $x^0 = mat(1;1;1;1)$ gewählt.

