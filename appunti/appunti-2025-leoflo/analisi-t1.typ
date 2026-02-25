#let appunti(materia: "", doc) = {
  set page(
    margin: 20pt,
    footer: context [
      #align(right, {
        counter(page).display(
          "1",
          both: false,
        )
      })
    ]
  )

  set heading(numbering: "1.")
  set list(spacing: 1.5em)
  set enum(spacing: 1.5em)

  show title: set text(size: 20pt)
  show title: set align(left)
  show link: set text(fill: blue)
  show heading: set block(above: 2em, below: 2em)

  title[Appunti di #materia]

  [
    Dal corso di Ingegneria Informatica dell'Università di Bologna.
    Per consigli o correzioni, contattatemi.
    Info su #link("https://leoflo.me/")[leoflo.me].
  ]

  block(height: 1em)

  doc
}

#show: appunti.with(
  materia: "Analisi T1"
)

#include "analisi-t1/01-principi.typ"
#include "analisi-t1/02-serie.typ"
#include "analisi-t1/03-limiti.typ"
#include "analisi-t1/04-funzioni.typ"
#include "analisi-t1/05-derivate.typ"
#include "analisi-t1/06-taylor.typ"
#include "analisi-t1/07-integrali.typ"
#include "analisi-t1/08-equazioni-differenziali.typ"
