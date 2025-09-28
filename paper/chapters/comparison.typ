= Grafischer Vergleich der Konvergenzverhalten

Für den Vergleich der Konvergenzverhalten wurden die Algorithmen der Verfahren so erweitert, dass der Verlauf der größten Differenz, also der Wert zur Überprüfung der Abbruchbedingung, gespeichert und zurückgegeben wird. Dieser kann dann wie folgt verwendet werden, um die Konvergenz zu vergleichen.

#figure(
  caption: "Grafischer Vergleich der Konvergenzverhalten der Systeme.",
  image("../img/comparison.png", width: 50%)
)

Es ist sehr gut zusehen, dass bereits ab der zweiten Iteration der größte Fehler zum vorherigen Schritt beim Gauß-Seidel- und SOR-Verfahren deutlich kleiner ist, als beim Jacobi-Verfahren. Die Abbruchbedingung wird deshalb auch nach nur der Hälfte der Iterationen erreicht. Es ist zudem ganz leicht zu erahnen, dass das SOR-Verfahren ein wenig schneller konvergiert, als das Gauß-Seidel-Verfahren. Man muss aber feststellen, dass das zu berechnende Gleichungssystem noch nicht groß genug ist, bzw. dass die geforderte Genauigkeit zu gering ist, als das sich die Einführung eines Overrelaxationsparameters wirklich lohnen würde.