#let project = (
  name: "Single-threaded Ray-Tracer Engine (miniRT)",
  role: "Hive Helsinki, group project",
  dates: "2026",
  tech: ("C", "Vector Math", "Fatstructs"),
  cv: "Developed a functional 3D renderer in C using math primitives, following the ray-tracer challenge book",
  summary: "Another really, really fun thing that I would love to go back to and recreate in c++ and multithreaded.",
  highlights: (
    [Worked with #html.elem("a", attrs: (href: "https://github.com/mbmb-mbmb"), "Markus")],
    "Everything was on the stack — no heap allocations",
    "Optimized the rendering loop to be as fast as possible",
  ),
  images: (
    (
      file: "miniRT_raytracer_screenshot.png",
      title: "Raytracer render",
      description: "Raytracer screenshot.",
    ),
  ),
  links: (("GitHub", "https://github.com/myrrysart/miniRT"),),
)
