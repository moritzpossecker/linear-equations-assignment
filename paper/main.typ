#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 2cm),
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  lang: "de"
)
#set par(
  justify: true,
  leading: 1em,
)

#set heading(numbering: "1.")

#show heading.where(level: 1): set block(above: 1.75em, below: 1.5em)
#show heading.where(level: 2): set block(above: 1.5em, below: 1.25em)
#show figure: set block(above: 1.5em, below: 1.75em)

#show figure.where(kind: image): set figure(supplement: "Abbildung")
#show figure.caption: c => [
  #text(weight: "bold")[#c.supplement #context counter(figure.where(supplement: c.supplement)).display()#c.separator] #c.body
]

#include "titlepage.typ"

#outline(title: "Inhaltsverzeichnis")

#counter(page).update(0)
#set page(numbering: "1")

#include "chapters/presentation_of_problem.typ"

#include "chapters/jacobi.typ"

#include "chapters/gauss_seidel.typ"

#include "appendix.typ"