#let body-font = "Sarasa UI SC"
#let sans-font = "Sarasa UI SC"
#let mono-font = "Sarasa Term SC"
#let title-font = "Sarasa UI SC"
#let heading-font = "Sarasa UI SC"

#let risi-pro(
  title: "",
  authors: (),
  date: none,
  body
) = {
  set document(author: authors, title: title)
  set page(
    numbering: "1",
    number-align: center,
    paper: "a4",
    margin: (x: 2cm, y: 2cm)
  )
  body
}

#let normal(body) = {
  set par(
    justify: true,
    first-line-indent: (amount: 0.75cm, all: true),
    leading: 10pt,
    spacing: 15pt,
  )
  set block(above: 20pt, below: 20pt)
  set text(font: body-font, 14pt, weight: "semibold")
  block(body)
}

#let quote(body) = {
  set par(
    justify: true,
    leading: 18pt,
    spacing: 15pt,
  )
  set align(left)
  set text(font: sans-font, 12pt, weight: "regular", style: "italic", fill: blue)
  set block(inset: (left: 70pt, right: 70pt), above: 20pt, below: 20pt)
  block(body)
}

#let heading1(body) = {
  set align(left)
  set block(above: 5pt, below: 5pt)
  show heading: set text(font: heading-font, 32pt, weight: "extrabold")
  block(body)
  line(length: 75%, stroke: 1.5pt + black)
  // set heading(numbering: "1 - 1")
}

#let heading2(body) = {
  set align(left)
  set block(above: 5pt, below: 5pt)
  show heading: set text(font: heading-font, 26pt, weight: "extrabold")
  // set heading(numbering: "1 - 1")
  block(body)
  line(length: 45%, stroke: 1pt + black)

}



#let title(body) = {
  set align(left)
  set block(above: 5pt, below: 20pt)
  set text(font: title-font, 38pt, weight: "semibold")
  block(body)
}

#let lightblueCode(body) = {
    set block(fill: rgb("#daf5ff"),
    inset: 8pt,
    radius: 4pt,)
    show raw: set text(font: mono-font, 15pt, weight: "regular")
    block(body)
}


// Make functions available to importing modules
#let risi-pro = risi-pro
#let normal = normal
#let quote = quote
#let heading1 = heading1
#let title = title
#let lightblueCode = lightblueCode
