#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *An introduction to Rust*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

= Introduction to rust

== Basic Syntax

== Writing a bubble sort algorithm

= Packaging code

= Building documentation

= Writing tests

= Best practices

= Development tips

= Noteworthy libraries

=== Features

static analysis
Strongly typed
borrow checker
compiled

Need to go hardcore

=== Pros and cons

Pros:
1. It is a compiled language. No JIT overhead and very fast.
2. Very memory safe through the borrow checker pattern

Cons:
1. Steep learning curve
2. Small ecosystem
3. Lower level comparing to the other two languages


=== What would I use Rust for?
