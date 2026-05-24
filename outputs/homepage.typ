#import "../tidbits/components.typ": *
#import "../tidbits/projects.typ" as projects
#import "../tidbits/artwork.typ" as artworks

#let project-card(body) = {
  html.elem("div", attrs: (class: "project-card"), body)
}

#html.link(rel: "stylesheet", href: "style.css")

#html.elem("header",
  html.elem("nav",
    html.elem("ul", attrs: (class: "nav-links"),
      html.elem("li", html.elem("a", attrs: (href: "#about"), "About")) +
      html.elem("li", html.elem("a", attrs: (href: "#projects"), "Projects")) +
      html.elem("li", html.elem("a", attrs: (href: "#analog"), "Analog")) +
      html.elem("li", html.elem("a", attrs: (href: "#digital"), "Digital")) +
      html.elem("li", html.elem("a", attrs: (href: "#photography"), "Photography")) +
      html.elem("li", html.elem("a", attrs: (href: "#contact"), "Contact"))
    )
  )
)

#html.elem("section", attrs: (id: "about"),
  html.elem("h2", "About") +
  html.elem("p", "I do art and code.") +
  html.elem("p", "Studied art in Repin Instituutti in Kotka.") +
  html.elem("p", "Currently studying programming in Hive Helsinki.")
)

#html.elem("section", attrs: (id: "projects"),
  html.elem("h2", "Projects") +
  html.elem("div", attrs: (class: "projects-grid"),
    projects.all.fold([], (acc, p) =>
      acc + project-card(
        html.elem("h4", p.role) +
        html.elem("h3", p.name) +
        html.elem("p", p.summary) +
        html.elem("p", html.elem("a", attrs: (href: p.links.at(0).at(1)), p.links.at(0).at(0))) +
        html.elem("p", attrs: (class: "project-tech"),
          "Tech: " + p.tech.fold("", (acc, t) =>
            if acc == "" { t } else { acc + ", " + t }
          )
        ) +
        html.elem("ul", attrs: (class: "project-highlights"),
          p.highlights.fold([], (acc, h) =>
            acc + html.elem("li", h)
          )
        ) +
        if p.images.len() > 0 {
          html.elem("ul", attrs: (class: "project-gallery"),
            p.images.fold([], (img-acc, img) =>
              img-acc + gallery-item(
                "images/thumb/" + img.file,
                "images/full/" + img.file,
                img.description,
                alt: img.title,
              )
            )
          )
        }
      )
    )
  )
)

#let artwork-sections = (
  "analog": "Analog",
  "digital": "Digital",
  "photography": "Photography",
)
#for (cat, label) in artwork-sections.pairs() {
  let items = artworks.all.filter(a => a.category == cat)
  if items.len() > 0 {
    html.elem("section", attrs: (id: cat),
      html.elem("h2", label) +
      html.elem("div", attrs: (class: "artwork-grid"),
        items.fold([], (acc, a) =>
          acc + gallery-item(
            "images/thumb/" + a.file,
            "images/full/" + a.file,
            a.description,
            alt: a.title,
          )
        )
      )
    )
  }
}

#html.elem("section", attrs: (id: "contact"),
  html.elem("div", attrs: (class: "contact"),
    html.elem("h2", "Contact") +
    html.elem("p", html.elem("a", attrs: (href: "mailto:hello@myrrys.art"), "hello@myrrys.art"))
  )
)

#html.elem("a", attrs: (href: "#", id: "back-to-top", title: "Back to top"), "^")
