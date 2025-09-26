= Gauß-Seidel-Verfahren

Das Gauß-Seidel-Verfahren teilt die Matrix $A$ in $A = U + O$, wobei $U$ die untere Dreiecksmatrix und $O$ die strikte obere Dreiecksmatrix symbolisiert.

$ A = mat(10, -1, 2, 0;
-1, 11, -1, 3; 2, -1, 10, -1; 0, 3, -1, 8) = mat(10, 0, 0, 0; -1, 11, 0, 0; 2, -1, 10, 0; 0, 3, -1, 8) + mat(0, -1, 2, 0; 0, 0, -1, 3; 0, 0, 0, -1; 0, 0, 0, 0) $

Mit den gleichen Bedingungen, wie beim Jaobi-Vefahren ist die Matrix $U$ invertierbar. Der Startvektor kann auch wieder, wie beim Jacobi-Verfahren, beliebig gewählt werden.

Daraus ergibt sich folgende rekursive Vorschrift:

$ x_(k+1) = U^(-1)(b-O x_k) "für alle " k in NN_0 $ @jacobi_leipzig