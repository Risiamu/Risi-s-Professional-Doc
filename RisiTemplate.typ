// #import "RisiTemplate.typ": *

// // Take a look at the file `template.typ` in the file panel
// // to customize this template and discover how it works.
// #show: project.with(
//   title: "报告测试",
//   authors: (
//     "KyNSyZsgV0o8A-fSirq",
//   ),
//   date: "July 21, 2023",
// )

// #let body-font = "Zhuque Fangsong (technical preview)"
#let body-font = "更紗黑體 CL"
#let sans-font = "更紗黑體 CL"
#let mono-font = "Sarasa Term CL"
#let title-font = "HYZiDIanSong"
#let heading-font = "HYQiHei-25S"



#let initial(title: "", authors: (), date: none, body) = {
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center, paper: "a4", margin: (x: 2cm, y: 2cm))
  body

  // show figure: it => align(center)[
  //   #set text(font: sans-font, lang: "zh",size: 8pt, fill:gray)
  //   #it.counter.display(it.numbering). #it.caption
  //   #it.body
  // ]
}

// Style List

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
    // first-line-indent: (amount: 1cm, all: true),
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
  show heading: set text(font: heading-font, 40pt, weight: "regular")
  set heading(numbering: "A - 1")
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
    fill: rgb("#daf5ff"), // Light blue color
    inset: 8pt, // Padding inside the box
    radius: 4pt, // Rounded corners
    raw(body.text, lang: body.lang), // Raw block content
  ),
)

