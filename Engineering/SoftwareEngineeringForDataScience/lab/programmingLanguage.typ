#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Programming Languages*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Background

Choosing a programming languages fitting the project's need is probably the most important decision you will need to make before starting the project, and many factors will affect your choice, including performance, your familarity with the language, your team's familarity with the language, community support, and the availability of libraries.
The purpose of this lab is to expose you to three languages I think is relevant for a data scientist career, which are #smallcaps[Python], #smallcaps[Julia], and #smallcaps[Rust].


== Python

=== Features

=== Pros and cons

interpreted
duck typing
garbage collection

=== What would I use python for?

== Julia

=== Features

JIT
multiple dispatch
metaprogramming

=== What would I use Julia for?

== Rust

=== Features

static analysis
Strongly typed
borrow checker
compiled

=== Pros and cons


=== What would I use Rust for?

= Exercise

In this lab, your task is to build a k-d tree in each of the three languages. A k-d tree is a space-partitioning data structure for organizing points in a k-dimensional space. It is a binary tree in which every node is a k-dimensional point. Every non-leaf node generates a splitting hyperplane that divides the space into two half-spaces. 

We will start with python, then move to Julia, and finally Rust.

Task:
1. Implement a k-d tree in Python


= Conclusion

What we have covered in this lab is the tip of the iceberg for each language, and it certainly does not give enough information about whether you choose language A over language B. Remember there is trade-off 

= References