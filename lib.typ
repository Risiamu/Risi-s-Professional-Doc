#let body-font = "Sarasa UI SC"
#let sans-font = "Sarasa UI SC"
#let mono-font = "Sarasa Term SC"
#let title-font = "GenRyuMin2 TC EL"
#let heading-font = "Sarasa UI SC"

#let risi-pro(
  title: "",
  authors: (),
  date: none,
  body,
) = {
  set document(author: authors, title: title)
  set page(
    numbering: "1",
    number-align: center,
    paper: "a4",
    margin: (x: 2cm, y: 2cm),
    background: place(
      center + horizon,
      dx: 30%,
      dy: -50%,
      [#circle(
          radius: 45pt,
          fill: rgb("#f0f0f0").lighten(20%),
          stroke: (thickness: 0.5pt, paint: rgb("#f0f0f0")),
        )],
    ),
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
  set text(font: body-font, 11pt, weight: "light")
  block(body)
}

#let quote(body) = {
  set par(
    justify: true,
    leading: 8pt,
    spacing: 15pt,
  )
  set align(left)
  set text(font: sans-font, 12pt, weight: "semibold", fill: rgb("#849997"))
  set block(inset: (left: 70pt, right: 70pt), above: 20pt, below: 20pt)
  block(body)
}

#let heading1(body) = {
  set align(left)
  set block(above: 5pt, below: 5pt)
  show heading: set text(font: heading-font, 15pt, weight: "semibold", fill: rgb("#727272"))
  block(body)
  // line(length: 15%, stroke: 0.3pt + black)
  // set heading(numbering: "1 - 1")
}

#let heading2(body) = {
  set align(left)
  set block(above: 5pt, below: 5pt)
  show heading: set text(font: title-font, 16pt, weight: "regular")
  // set heading(numbering: "1 - 1")
  block(body)
  // line(length: 12%, stroke: 0.25pt + black)
}



#let title(body) = {
  set align(left)
  set block(above: 5pt, below: 20pt)
  set text(font: title-font, 34pt, weight: "regular")
  block(body)
}

#let lightblueCode(body) = {
  set block(
    fill: rgb("#daf5ff"),
    inset: 8pt,
    radius: 4pt,
  )
  show raw: set text(font: mono-font, 10pt, weight: "regular")
  block(body)
}

#let place(body, alignment: top + right, dx: 0pt, dy: 0pt) = {
  place(
    alignment,
    dx: dx,
    dy: dy,
    body,
  )
}


// Make functions available to importing modules
#let risi-pro = risi-pro
#let normal = normal
#let quote = quote
#let heading1 = heading1
#let title = title
#let lightblueCode = lightblueCode
#let place = place
