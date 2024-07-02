#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Version Control with git*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

There are many great guides on the internet about how to use git (#link("https://rogerdudler.github.io/git-guide/")[This] being my favorite guide), and it is not very useful for me to go through every existing git commands anyway.

Here is a top level view of what the git function you will learn and use 
#set align(center)
#table(
  columns: (auto, auto),
  inset: 5pt,
  align: horizon,
  table.header(
    [*Command*], [*Function*],
  ),
  [init], [Initialize a new git repository],
  [add], [],
  [rm], [],
  [push], [],
  [pull], [],
  [fetch], [],
  [log], [],
  [checkout], [],
  [status], [],
  [branch], [],
  [remote], [],
  [log], [],
  [diff], [],
  [rebase], [],
  [merge], [],
  [prune], [],
  [reset], [],
  [revert], [],
  [tag], [],
  [submodule], [],
)

= Exercises

= Conclusion

= References