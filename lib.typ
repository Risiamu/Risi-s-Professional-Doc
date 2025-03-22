#let body-font = "Sarasa UI SC"
#let sans-font = "Sarasa UI SC"
#let mono-font = "Sarasa Term CL"
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
    first-line-indent: (amount: 1cm, all: true),
    leading: 10pt,
    spacing: 15pt,
  )
  set block(above: 20pt, below: 20pt)
  set text(font: body-font, 14pt, weight: "regular")
  block(body)
}

#let quote(body) = {
  set par(
    justify: true,
    leading: 18pt,
    spacing: 15pt,
  )
  set align(center)
  set text(font: sans-font, 18pt, weight: "light", style: "italic", fill: blue)
  body
}

#let heading1(body) = {
  set align(left)
  set block(above: 5pt, below: 5pt)
  show heading: set text(font: heading-font, 40pt, weight: "light")
  set heading(numbering: "1 - 1")
  block(body)
}

#let title(body) = {
  set align(left)
  set block(above: 5pt, below: 20pt)
  set text(font: title-font, 30pt, weight: "regular")
  block(body)
}

#let lightblueCode(body) = block(
  block(
    fill: rgb("#daf5ff"),
    inset: 8pt,
    radius: 4pt,
    body
  )
)

// Make functions available to importing modules
#let risi-pro = risi-pro
#let normal = normal
#let quote = quote
#let heading1 = heading1
#let title = title
#let lightblueCode = lightblueCode
