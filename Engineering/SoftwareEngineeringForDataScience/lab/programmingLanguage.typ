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

= Plan for today's session

+ We will go through an introduction 

== Python

Python is probably the first language you learn from a data science course, because of the simple learning experience. Here are some features of python that worth noticing:

=== Syntax


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

In this lab, your task is to write an insertion sort algorithm in each of the three languages. You will find the more specific instruction in the #link("https://github.com/KazeClasses/Programming_languages")[class repository]

= Conclusion

What we have covered in this lab is the tip of the iceberg for each language, and it certainly does not give enough information about whether you choose language A over language B. Remember there is trade-off 

= References