#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Programming Languages*
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

Choosing a programming languages fitting the project's need is probably the most important decision you will need to make before starting the project, and many factors will affect your choice, including performance, your familarity with the language, your team's familarity with the language, community support, and the availability of libraries.
The purpose of this lab is to expose you to three languages I think is relevant for a data scientist career, which are python, julia, and rust.