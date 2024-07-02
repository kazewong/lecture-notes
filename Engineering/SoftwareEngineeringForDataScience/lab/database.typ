#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Database and data engineering*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Background

In my experience, collecting and interfacing with data are usually by far the most difficult part of a project, and the single most significant factor which determine whether some downstream application will work or not. 

= postgresql

= data management software