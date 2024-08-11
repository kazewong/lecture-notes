#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Introduction to Python*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

= Introduction to python

== Basic Syntax

== Writing a bubble sort algorithm

== Class

== Running a python script

= Packaging code

= Building documentation

= Writing tests

= Best practices

= Development tips

= Noteworthy libraries


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



= Exercise

In this lab, your task is to write an insertion sort algorithm in each of the three languages. You will find the more specific instruction in the #link("https://github.com/KazeClasses/Programming_languages")[class repository]

= Conclusion

What we have covered in this lab is the tip of the iceberg for each language, and it certainly does not give enough information about whether you choose language A over language B. Remember there is trade-off 

= References