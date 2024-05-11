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

This course aims to expose the student to many modern software engineering practices. We will cover topics such as programming lanugages, popular packages for data science, tooling and best practices, and deployment. This course focuses on hands-on experience, labs and tutorials, which the student will develop a semester-long project with the guidance of the instructor. While each student should have their own project for the course, students are encouraged to work with each other.

= Philosophy

== I choose to teach everything but building neural network

If you want to learn how to build a certain neural network, this is not the course, I have another course that focuses on deep learning engineering. This course is about everything around neural network, which in my opinion is way harder to get into and definite need a mentor more than building neural network. Most of the neural network library such as PyTorch and Jax are very well-documented, and there are tons of great blog post teaching you how to do it. The workflow of building a neural network is usually quite well defined, get data, tune numbers, publish paper. There are not much choices you have to make, and for the choices you do have to make, often you can rely on your mathematical intuition to guide yourself. On the other hand, mathematical insight is not going to be immediately useful when we are talking about how to setup a CI/CD pipeline, or how to write a good documentation. Navigating the design space of neural network is relatively straight forward, but navigating the design space of a full fledge software is like kayaking in a stormy sea. I believe taking this course first before you dive into deep learning specific engineering will benefit you tremendously, since you will be equipped with the tools that bring your neural networks to the world and make a difference.

== I am just your guide

There are different schools of thought when it comes to building software, just look at how many javascript frameworks and linux distro there. In the end, it is more about what you are trying to achieve and your style more than anything. There are general principles, best practice and anti-pattern, but a lot of engineering is about trade-offs and taste. I am structuring this coruse and the material according to my taste and preference, which is aligned with scientific computing and open source software developement. This may not be the best option in a different environment, such as in cyber security space. I am designing to course not only to show you the tools and workflows I prefer, but also why I pick the way I program. Style evolves over time as well, so remember to be agile and be ready to change if betters options are available.

== Learn the spirit, not the knowledge

Whatever tools I teach you today, they will be outdated in the near future. Maybe a couple years, maybe a couple months. Furthermore, you 

== I can help you to get your A, but you have to get it yourself

Since this is a class that suppose to teach you practical skills instead of the truth of the universe, I do not see the point in quizing and grading you. Instead, I value whether you can build some software and serve the community in the end, so that is how the assessment scheme is going to work: for the official grading, we will set up some simple labs for each topics, as long as you have done all of them, you will get an A. However, the true A in this class will be a software that you build and make it available to the world, and I will not be the (only) judge of whether you get an A or not. Alongside with the labs, you will pick a software project at the beginning of the course and build it as we progress in the class. At the end of the course, we will have a showcase of everyone's project. This *do not* contribute to your grade in any way. The catch is, hopefully you pick something that you are truly passionate about instead of just something that you think will be easy to build for the class, and you can actually show the world what software you have made. As a continuation of the course, I will help you publish and leverage your software for your career path, whether that involves publishing a code paper, or submitting to conferences.


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
12. Database
13. Contrainerization