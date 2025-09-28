= Successive Overrelaxation SOR

Das SOR-Verfahren ist der Versuch die Konvergenz durch die Einführung mindestens eines Relaxationsparameters zu beschleunigen, indem der Gauß-Seidel-Schritt vergrößert wird. 

Es nutzt zunächst die Iterationsvorschrift des Gauß-Seidel-Verfahrens zur Bestimmung von $tilde(x)_j^t$. Der Wert $x_j^t$ wird dann anschließend noch mit der Verwendung des Relaxationsparameters $omega$ bestimmt:

$ x_j^t= omega tilde(x)_j^t + (1-omega) x_j^(t-1) $

@perlt

== Bestimmung des optimalen Overrelaxationsparameters

Die Wahl des optimalen Overrelaxationsparameters ist für die effiziente Nutzung des SOR-Verfahrens entscheidend. Er sollte groß genug sein, um die Konvergenz zu beschleunigen. Ist er allerdings zu groß, kann er divergent wirken. 

Für die symmetrische, positiv definite Matrix $A$ kann $omega_"opt"$ mit $omega_"opt" = 2/(1 + sqrt(1 - rho^2))$ berechnet werden, wobei $rho$ den Spektralradius der Verfahrensmatrix $D^(-1)(L+R)$ des Jacobi-Verfahrens darstellt. @wikipedia_sor

$ M_J = D^(-1)(L+R) = mat(1/10, 0, 0, 0; 0, 1/11, 0, 0; 0, 0, 1/10, 0; 0, 0, 0, 1/8) times mat(0, -1, 2, 0; -1, 0, -1, 3; 2, -1, 0, -1; 0, 3, -1, 0) = mat(0, -0.1, 0.2, 0; -0.0909, 0, -0.0909, 0.2727; 0.2, -0.1, 0, -0.1; 0, 0.375, -0.125, 0) $

Bestimmung der Eigenwerte mittels Online-Werkzeugs @eiegenwerte:

$ lambda_1 = -0.344 ; lambda_2 = -0.186; lambda_3 = 0.104; lambda_4 = 0.426 $

$ rho(M_J) = max(|lambda|) = 0.426 $

$ omega_"opt" = 2/(1+sqrt(1-0.426^2)) = 1.05 $

Der optimale Overrelaxationsparameter weicht nur sehr leicht von 1, also vom unveränderten Gauß-Seidel-Verfahren, ab. In der Anwendung wird die Abbruchbedingung ebenfalls nach 5 Iterationsschritten mit einem sehr ähnlichen Ergebnis erreicht.


