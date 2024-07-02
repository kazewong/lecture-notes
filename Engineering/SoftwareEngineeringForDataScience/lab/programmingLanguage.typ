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

Because of the large ecosystem of python, #smallcaps[Python] is a great choice for a wide range of tasks, from building neural network to building fullstack web app.
However, if your task demands high throughput or low latency, and there is no existing package which some wizards have already built to exactly solve your task, it may be worth thinking about the next two alternatives.

== Julia

=== Features

JIT
multiple dispatch
metaprogramming
Somewhat messed up eco system

=== What would I use Julia for?



== Rust

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

= Exercise

In this lab, your task is to build a k-d tree in each of the three languages. A k-d tree is a space-partitioning data structure for organizing points in a k-dimensional space. It is a binary tree in which every node is a k-dimensional point. Every non-leaf node generates a splitting hyperplane that divides the space into two half-spaces. 

We will start with python, then move to Julia, and finally Rust.

Task:
1. Implement a k-d tree in Python


= Conclusion

What we have covered in this lab is the tip of the iceberg for each language, and it certainly does not give enough information about whether you choose language A over language B. Remember there is trade-off 

= References