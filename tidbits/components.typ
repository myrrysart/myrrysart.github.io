#let linked-img(thumb, full, alt: "") = {
  html.elem("a", attrs: (href: full, target: "_blank"),
    html.elem("img", attrs: (src: thumb, alt: alt))
  )
}

#let gallery-item(thumb, full, desc, alt: "") = {
  html.elem("li",
    linked-img(thumb, full, alt: alt) +
    html.elem("p", desc)
  )
}
