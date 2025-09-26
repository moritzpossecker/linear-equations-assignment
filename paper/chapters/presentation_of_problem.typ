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
) $

"Für sehr große Gleichungssysteme mit $n >> 1000$ ist das Gaußsche Eliminationsverfahren nur schwer zu handhaben" @perlt, da diese allerdings in der Praxis unausweichlich sein können, sollen in dieser Arbeit iterative Lösungsverfahren betrachtet werden. Diese sind:

- Jacobi
- Gauss-Seidel
- Successive Overrelaxation SOR.

Im folgenden werden die Algorithmen beschrieben und in der Programmiersprache Python implementiert. Es werden außerdem Konvergenzbedingungen für das System geprüft und der optimale Overrelaxationsparameter ω für SOR ermittelt. Danach wird das Konvergenzverhalten der drei Verfahren miteinander verglichen, bevor abschließend, basierend auf den vorangegangenen Berechnungen, eine Vermutung zur exakten Lösung des Gleichungssystems angestellt und getestet wird.