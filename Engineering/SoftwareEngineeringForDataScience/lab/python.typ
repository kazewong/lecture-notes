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

`Python` is probably the most popular programming language by many measure these days, due to its simple learning experience and large ecosystem. However, being simple to learn also means it is easy to write bad code. So in this lab, we are going to go through the following topics:

1. Some basic syntax for python, and try to write a simple insertion sort algorithm in python.
2. Basic of structuring and packaging a python project. 
3. Building documentation with `mkdocs`.
4. Adding tests to the project.
5. Some best practices and development tips.
6. Some noteworthy libraries in python.

= Introduction to python

== Basic Syntax

=== Variables

=== Control flow

=== Functions

== Writing an insertion sort algorithm

== Running a python script

= Packaging code

= Building documentation

= Writing tests

= Best practices/Development tips

== IPython

== Virtual environment

== Typing

== Linting and formatting

== Debugging

= Noteworthy libraries

== Jax

I like to start with `jax` probably because I am a heavy `jax` user. Don't get me wrong, I use `PyTorch` too, but I use `jax` more because of its performance but also the workflow I have in `jax` is very close to the workflow I had before machine learning library became a thing. Basically, if you are familiar with `numpy` and `scipy`, you should find `jax` is basically `numpy` on steroids.

== Flask

== HoloViews

== FastHTML

== Too common/Too obscure

`numpy`, `scipy`, `pandas`, `matplotlib`, `seaborn`, `scikit-learn`, `pytorch`,

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