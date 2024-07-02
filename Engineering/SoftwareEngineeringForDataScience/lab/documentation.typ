#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Documentation and testing*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Documentation

== Code as documentation

When I was in grad school, the software I wrote almost never have any level of adequite documentation. The reason behind that is mostly because I was lazy, and I couldn't stand the mind numbing process of writing down what is obviously there.

This is a typical example of how my code would look like 
```python
def binary_tree()
```

To my defense, it is pretty redundant to write doc string for this piece of code. Before we go into docstring style and all that, the first thing to make sure is to name and structure your code reasonably.

This is an example of what code should not look like:

'''
'''


The problem with code as documentationa is reading and understanding source codes direcly requires a certain level of familarity of the language from the reader.

== Docstring

== Tutorials

= Testing

= Deploying