= Problemstellung

Gegeben ist folgendes Gleichungssystem der Form $A x = b$:

$
  10 x_1 − x_2 + 2 x_3 &= 6\
−x_1 + 11 x_2 − x_3 + 3 x_4 &= 25\
2 x_1 − x_2 + 10 x_3 − x_4 &= −11\
3 x_2 − x_3 + 8 x_4 &= 15
$

Daraus ergibt sich:

$ A = mat(
  10, -1, 2, 0;
  -1, 11, -1, 3;
  2, -1, 10, -1;
  0, 3, -1, 8
) $

, sowie

$ b = mat(
  6;
  25;
  -11;
  15
) . $

"Für sehr große Gleichungssysteme mit $n >> 1000$ ist das Gaußsche Eliminationsverfahren nur schwer zu handhaben" @perlt, da diese allerdings in der Praxis unausweichlich sein können, sollen in dieser Arbeit iterative Lösungsverfahren betrachtet werden. Diese sind:

- Jacobi
- Gauss-Seidel
- Successive Overrelaxation SOR.

Im Folgenden werden die Algorithmen beschrieben und in der Programmiersprache Python implementiert. Es werden außerdem Konvergenzbedingungen für das System geprüft und der optimale Overrelaxationsparameter ω für SOR ermittelt. Danach wird das Konvergenzverhalten der drei Verfahren miteinander verglichen, bevor abschließend, basierend auf den vorangegangenen Berechnungen, eine Vermutung zur exakten Lösung des Gleichungssystems angestellt und getestet wird.

== Abbruchbedingung

In dieser Arbeit soll die Abbruchbedingung

$ norm(x_(k+1) - x_k)_infinity < 10^(−3) $

verwendet werden. Also, wenn sich kein Element des Ergebnisses $x_(k+1)$ um mehr als ein Tausendstel vom dazugehörigen Element des vorangegangenen Ergebnisses unterscheidet, soll die Iteration gestoppt werden. Eine Abbruchbedingung ist notwendig, um unendliche Iterationen zu verhindern. Eine feste Anzahl an Iterationen könnte allerdings zu ungenauen oder ineffektiven Ergebnissen führen. Die Ergebnisse könnten sich nach $x$ Iterationen noch sehr stark verändern oder sich nach $x$ Iterationen seit einer Weile kaum mehr verändert haben, sodass man sich Rechenaufwand und Zeit hätte sparen können. Mit dieser Methode wird eine Genauigkeit von $10^(-3)$ für die Lösung festgelegt, die für diese Zwecke ausreichend sein soll. So kann auch verglichen werden, nach wie vielen Iterationen die verschiedenen Verfahren jeweils die Abbruchbedingung erreichen.

== Summenformel und Matrix-Schreibweise

Die folgenden Verfahren lassen sich jeweils mit Summenformeln oder mit Matrix-Formeln lösen und abbilden. In der folgenden Arbeit wurde sich für die Verwendung der Summenformeln entschieden. Diese sind zwar oft länger und damit unübersichtlicher, kommen aber ohne das Bilden von inversen Matrizen und ähnlichen Operationen aus, weshalb sie einfacher (ohne externe Bibliotheken) zu implementieren sind.