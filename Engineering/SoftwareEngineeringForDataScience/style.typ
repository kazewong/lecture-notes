#let style_template(doc) = [
  #set text(
    font: "Times New Roman",
    size: 11pt
  )

  #show heading.where(
    level: 1,
  ): it => text(
    size: 18pt,
    weight: "extrabold",
    it.body,
  )

  #show link: underline

  #doc
]