#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Software engineering for data science*
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

#set par(justify: true)

= Course Description



= Philosophy

== I am your guide

Software engineering 

== This is my take, not the truth

== Learn the spirit, not the knowledge

Whatever tools I teach you today, they will be outdated in the near future. Maybe a couple years, maybe a couple months. Furthermore, you 

== I can help you to get your A, but you have to get it yourself

Since this is a class that suppose to teach you practical skills instead of the truth of the universe, I do not see the point in quizing and grading you. Instead, I value whether you can build some software and serve the community in the end, so that is how the assessment scheme is going to work: for the official grading, we will set up some simple labs for each topics, as long as you have done all of them, you will get an A. However, the true A in this class will be a software that you build and make it available to the world, and I will not be the (only) judge of whether you get an A or not. Alongside with the labs, you will pick a software project at the beginning of the course and build it as we progress in the class. At the end of the course, we will have a showcase of everyone's project. This *do not* contribute to your grade in any way. The catch is, hopefully you pick something that you are truly passionate about instead of just something that you think will be easy to build for the class, and you can actually show the world what software you have made. As a continuation of the course, I will help you publish and leverage your software for your career path, whether that involves publishing a code paper, or submitting to conferences.

== It's about the journey, not the destination

= Topics

1. Problem analysis
2. Programming languages
3. Version control
4. Testing
5. Debugging
6. Code review
7. Documentation
8. Tooling
9. Deployment
10. Continuous integration
11. Frontend
12. Backend