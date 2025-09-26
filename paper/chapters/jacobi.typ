= Abbruchbedingung

In dieser Arbeit soll die Abbruchbedingung

$ norm(x_(k+1) - x_k)_infinity < 10^(−3) $

verwendet werden. Also wenn sich kein Element des Ergebnisses $x_(k+1)$ um mehr als ein Tausendstel vom dazugehörigen Element des vorangegangenen Ergebnisses unterscheidet. Eine Abbruchbedingung ist notwendig, um unendliche Iterationen zu verhindern. Des weiteren könnte eine feste Anzahl an Iterationen zu ungenauen oder ineffektiven Ergebnissen führen, weil die Ergebnisse nach $x$ Iterationen noch sehr stark schwanken oder sich nach $x$ Iterationen seit einer weile kaum mehr verändert haben, sodass man sich Rechenaufwand und Zeit hätte sparen können. Mit dieser Methode wird eine Genauigkeit von $10^(-3)$ festgelegt, die für diese Zwecke ausreichend sein soll.

= Jacobi-Verfahren

Das Jacobi-Verfahren, setzt voraus, dass A eine $n times n$-Matrix mit $A = (a_(i j))_(i,j = 1,...,n)$ ist, deren Elemente $a_(i i)$, also die Elemente auf der Diagonalen, ungleich 0 sind, sodass sich eine inverse Diagonalmatrix $D^(-1)$ mit

$
  D^(-1) = mat(
    a_(1 1)^(-1), 0, 0, dots, 0;
    0, a_(2 2)^(-1), 0, dots, 0;
    dots.v, dots.v, , , dots.v;
    0, 0, 0, dots, a_(n n)^(-1) 
  )
$

berechnen lässt.

Daraus ergibt sich folgende rekursive Vorschrift:

$ x_(k+1) = x_k - D^(-1)(A x_k - b) "für alle " k in NN_0 $

, wobei der Startvektor $x_0 in RR^n$ beliebig gewählt werden kann. @jacobi_leipzig

Wird $x_0 = mat(1; 1; 1; 1)$ gewählt, so ergibt sich für $x_1$ für die erste Iteration folgende Rechnung und Lösung:

$ x_1 = mat(1; 1; 1; 1;) - mat(1/10, 0, 0, 0;
0, 1/11, 0, 0; 0, 0, 1/10, 0; 0, 0, 0, 1/8) times (mat(10, -1, 2, 0;
-1, 11, -1, 3; 2, -1, 10, -1; 0, 3, -1, 8) times mat(1; 1; 1; 1;) - mat(6; 25; -11; 15)) = mat(1/2; 24/11; -11/10; 13/8) $

Der Vektor $x_1$ stellt eine erste Nährung der Lösung des Gleichungssystems dar. Da es sich um ein iteratives Verfahren handelt, wird die Lösung erst bei mehreren Durchläufen genauer und weicht nicht mehr stark von ihrer Vorgängerlösung ab $dash$  sie erreicht die Abbruchbedingung. 

Nach der Implementierung des Algorithmus erreichte er nach 10 Iterationen die Abbruchbedingung mit der Lösung:

$ x_10 = mat(0.9997; 2.0004; -1.0003; 1.0005) $
