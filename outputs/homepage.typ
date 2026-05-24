#import "../tidbits/components.typ": *

#import "../tidbits/projects/mini_rt.typ": project as p_mini_rt
#import "../tidbits/projects/fractol.typ": project as p_fractol
#import "../tidbits/projects/mnshell.typ": project as p_mnshell
#import "../tidbits/projects/stick_vim.typ": project as p_stick_vim
#import "../tidbits/projects/chorded_keyboard.typ": project as p_keyboard

#import "../tidbits/artwork/squeeze_sip_and_grind.typ": artwork as a_squeeze
#import "../tidbits/artwork/anatomy_study.typ": artwork as a_anatomy
#import "../tidbits/artwork/head_studies.typ": artwork as a_heads

#import "../tidbits/artwork/starving_saint.typ": artwork as a_saint
#import "../tidbits/artwork/stoic_and_stonefaced.typ": artwork as a_stoic
#import "../tidbits/artwork/uni_vs_mia.typ": artwork as a_uni
#import "../tidbits/artwork/noita.typ": artwork as a_noita
#import "../tidbits/artwork/praedor_monster.typ": artwork as a_praedor
#import "../tidbits/artwork/skeleton_axes.typ": artwork as a_skeleton

#import "../tidbits/artwork/streets_of_kotka_1.typ": artwork as a_kotka1
#import "../tidbits/artwork/streets_of_kotka_2.typ": artwork as a_kotka2
#import "../tidbits/artwork/streets_of_kotka_3.typ": artwork as a_kotka3
#import "../tidbits/artwork/streets_of_helsinki_1.typ": artwork as a_helsinki1
#import "../tidbits/artwork/streets_of_helsinki_2.typ": artwork as a_helsinki2

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
  html.elem("p", "Currently studying in Hive Helsinki.")
)

#html.elem("section", attrs: (id: "projects"),
  html.elem("h2", "Projects") +
  html.elem("div", attrs: (class: "projects-grid"),
    project-card(
      html.elem("h3", p_mini_rt.name) +
      html.elem("p", p_mini_rt.summary) +
      html.elem("p", html.elem("a", attrs: (href: p_mini_rt.links.at(0).at(1)), p_mini_rt.links.at(0).at(0))) +
      if p_mini_rt.images.len() > 0 {
        html.elem("ul", attrs: (class: "project-gallery"),
          gallery-item(
            "images/thumb/" + p_mini_rt.images.at(0).file,
            "images/full/" + p_mini_rt.images.at(0).file,
            p_mini_rt.images.at(0).description,
            alt: p_mini_rt.images.at(0).title,
          )
        )
      } else { none }
    ) +
    project-card(
      html.elem("h3", p_fractol.name) +
      html.elem("p", p_fractol.summary) +
      html.elem("p", html.elem("a", attrs: (href: p_fractol.links.at(0).at(1)), p_fractol.links.at(0).at(0))) +
      if p_fractol.images.len() > 0 {
        html.elem("ul", attrs: (class: "project-gallery"),
          gallery-item(
            "images/thumb/" + p_fractol.images.at(0).file,
            "images/full/" + p_fractol.images.at(0).file,
            p_fractol.images.at(0).description,
            alt: p_fractol.images.at(0).title,
          )
        )
      } else { none }
    ) +
    project-card(
      html.elem("h3", p_mnshell.name) +
      html.elem("p", p_mnshell.summary) +
      html.elem("p", html.elem("a", attrs: (href: p_mnshell.links.at(0).at(1)), p_mnshell.links.at(0).at(0))) +
      if p_mnshell.images.len() > 0 {
        html.elem("ul", attrs: (class: "project-gallery"),
          gallery-item(
            "images/thumb/" + p_mnshell.images.at(0).file,
            "images/full/" + p_mnshell.images.at(0).file,
            p_mnshell.images.at(0).description,
            alt: p_mnshell.images.at(0).title,
          )
        )
      } else { none }
    ) +
    project-card(
      html.elem("h3", p_stick_vim.name) +
      html.elem("p", p_stick_vim.summary) +
      html.elem("p", html.elem("a", attrs: (href: p_stick_vim.links.at(0).at(1)), p_stick_vim.links.at(0).at(0))) +
      if p_stick_vim.images.len() > 0 {
        html.elem("ul", attrs: (class: "project-gallery"),
          gallery-item(
            "images/thumb/" + p_stick_vim.images.at(0).file,
            "images/full/" + p_stick_vim.images.at(0).file,
            p_stick_vim.images.at(0).description,
            alt: p_stick_vim.images.at(0).title,
          )
        )
      } else { none }
    ) +
    project-card(
      html.elem("h3", p_keyboard.name) +
      html.elem("p", p_keyboard.summary) +
      html.elem("p", html.elem("a", attrs: (href: p_keyboard.links.at(0).at(1)), p_keyboard.links.at(0).at(0))) +
      if p_keyboard.images.len() > 0 {
        html.elem("ul", attrs: (class: "project-gallery"),
          gallery-item(
            "images/thumb/" + p_keyboard.images.at(0).file,
            "images/full/" + p_keyboard.images.at(0).file,
            p_keyboard.images.at(0).description,
            alt: p_keyboard.images.at(0).title,
          ) +
          gallery-item(
            "images/thumb/" + p_keyboard.images.at(1).file,
            "images/full/" + p_keyboard.images.at(1).file,
            p_keyboard.images.at(1).description,
            alt: p_keyboard.images.at(1).title,
          )
        )
      } else { none }
    )
  )
)

#html.elem("section", attrs: (id: "analog"),
  html.elem("h2", "Analog") +
  html.elem("div", attrs: (class: "artwork-grid"),
    gallery-item("images/thumb/" + a_squeeze.file, "images/full/" + a_squeeze.file, a_squeeze.description, alt: a_squeeze.title) +
    gallery-item("images/thumb/" + a_anatomy.file, "images/full/" + a_anatomy.file, a_anatomy.description, alt: a_anatomy.title) +
    gallery-item("images/thumb/" + a_heads.file, "images/full/" + a_heads.file, a_heads.description, alt: a_heads.title)
  )
)

#html.elem("section", attrs: (id: "digital"),
  html.elem("h2", "Digital") +
  html.elem("div", attrs: (class: "artwork-grid"),
    gallery-item("images/thumb/" + a_saint.file, "images/full/" + a_saint.file, a_saint.description, alt: a_saint.title) +
    gallery-item("images/thumb/" + a_stoic.file, "images/full/" + a_stoic.file, a_stoic.description, alt: a_stoic.title) +
    gallery-item("images/thumb/" + a_uni.file, "images/full/" + a_uni.file, a_uni.description, alt: a_uni.title) +
    gallery-item("images/thumb/" + a_noita.file, "images/full/" + a_noita.file, a_noita.description, alt: a_noita.title) +
    gallery-item("images/thumb/" + a_praedor.file, "images/full/" + a_praedor.file, a_praedor.description, alt: a_praedor.title) +
    gallery-item("images/thumb/" + a_skeleton.file, "images/full/" + a_skeleton.file, a_skeleton.description, alt: a_skeleton.title)
  )
)

#html.elem("section", attrs: (id: "photography"),
  html.elem("h2", "Photography") +
  html.elem("div", attrs: (class: "artwork-grid"),
    gallery-item("images/thumb/" + a_kotka1.file, "images/full/" + a_kotka1.file, a_kotka1.description, alt: a_kotka1.title) +
    gallery-item("images/thumb/" + a_kotka2.file, "images/full/" + a_kotka2.file, a_kotka2.description, alt: a_kotka2.title) +
    gallery-item("images/thumb/" + a_kotka3.file, "images/full/" + a_kotka3.file, a_kotka3.description, alt: a_kotka3.title) +
    gallery-item("images/thumb/" + a_helsinki1.file, "images/full/" + a_helsinki1.file, a_helsinki1.description, alt: a_helsinki1.title) +
    gallery-item("images/thumb/" + a_helsinki2.file, "images/full/" + a_helsinki2.file, a_helsinki2.description, alt: a_helsinki2.title)
  )
)

#html.elem("section", attrs: (id: "contact"),
  html.elem("div", attrs: (class: "contact"),
    html.elem("h2", "Contact") +
    html.elem("p", html.elem("a", attrs: (href: "mailto:hello@myrrys.art"), "hello@myrrys.art"))
  )
)

#html.elem("a", attrs: (href: "#", id: "back-to-top", title: "Back to top"), "^")
