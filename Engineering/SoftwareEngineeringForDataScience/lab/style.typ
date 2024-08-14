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

  #show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  
  #show link: underline

  #doc
]