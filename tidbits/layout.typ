#let dark = rgb("#111111")
#let mid-gray = rgb("#555555")
#let light-gray = rgb("#bbbbbb")

#let page-setup() = {
  set page(paper: "a4", margin: (x: 1.5cm, y: 1.5cm))
  set text(size: 10pt, fill: dark)
  set par(justify: true, leading: 0.55em)
}

#let project-heading(name, role) = {
  v(0.3em)
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#name],
    text(style: "italic", fill: mid-gray)[#role]
  )
  v(0.1em)
}

#let work-heading(company, role, dates) = {
  v(0.3em)
  grid(
    columns: (1fr, auto),
    [#text(weight: "bold")[#company] --- #text(style: "italic")[#role]],
    text(fill: mid-gray)[#dates]
  )
  v(0.1em)
}

#let section(title) = {
  v(1em)
  text(weight: "bold", size: 11pt)[#title]
  v(-0.3em)
  line(length: 100%, stroke: 0.5pt + light-gray)
  v(0.2em)
}
