#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Problem analysis*
  ]),
  numbering: "1",
)

#set text(
  font: "Times New Roman",
  size: 11pt
)

#show heading.where(
  level: 1,
): it => text(
  size: 18pt,
  weight: "extrabold",
  it.body
)

1. Gradio
2. JS
3. Rust