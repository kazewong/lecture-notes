#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Problem analysis*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

The first step I always take before actually sitting down and start coding is to think about the problem. Many people are conditioned to just solve the problem as it is given, without realizing a way more obvious and better solution. I can give you an example who is one of my friend's personal experience: she was working at a company which manage warehouses. One of the data science job they offered some interns to do is the following: their conveyor belts sometimes get jammed and the management will need to send people to unjam it whenever it is discovered. Some people noticed from CCTV footage, there will be some patterns of the parcel forming before the conveyor belts get jammed. Her task was to develop a vision algorithm to identify those patterns, then send a message to the management so they can go unjam the conveyor belts.
This is a very well-defined data science task, and one just have to tag some images, train a convolutional neural network, then write a bot to send the management the message whenever those patterns are detected. They hired some interns to do it, took some money and took some months, then it worked. Is this not a great victory for data science again?
A data science intern these days are not exactly cheap, so developing such a solution did cost the company non-trivial amount of money. If you are running the company, how would you solve? Instead of spending some months in developing a vision algorith, I would just either read out the conveyor belt motor information or buy a gauge to measure that, and whenever it is 0, I send a message to the management. Probably cost me less than a 100 dollars instead of ~100k salary for the intern.

The moral of the story is really just think before you commit to a big plan. *What are you trying to achieve in this project?* Right here is the most important question you have to ask yourself everytime you come back to this project. Is it to sell it to millions? Is it to get a promotion? Is it just for fun? The answer to this question should dedicate the answer to the following questions we will go through in this lecture. And everytime you have to make a decision or whenever you are lost, ask yourself this question again. The more clear your answer is, the more clear which choice you should go for is, and the rest is detail. The objective of this course is to train you to be an independent data scientist, I want you to be able to do a project on your own as well as working with others. So instead of going through just a list of technical skills, I will also put my focus on making decisions: what programming language should I use? How should my documentationa look like? How do I want to manage the code base? Should I rewrite yet another javascript framework? These are examples of questions you will ask yourself throughout this course.

For this lecture specifically, we 
In this lecture, we will go through a list of important question

= Features

== Storage
== Compute
== Platform
== Latency
== Development and deployment cycle
== Timeline
== Privacy issues
== Data type
== Data collection
== Automated training


= Semester project brainstorming

Since this is a one-semester project, it will be helpful to keep the scope of the project relatively small. 

There are a couple of milestones I would like you to hit during this course, which are
1. Implmenting the core logic of your project.
2. Design an interface to serve your project.
3. Release the code and the service to the world.

== Step 1: Go wild

The first step of finding your potential project is to come up with a list of dream projects. Here are some questions that will help you brainstorm what could be interesting:

1. What are your hobbies? Is there anything that you want related to your hobbies that can benefit from data science?
2. What chores do you dislike? Can it benefit from automation?
3. Ask you friends to rant about something, what could possibly make their life better?
4. Is there a dataset that you think it is cool and always wants to try your hands on it but never find the time?

Come up with at least 5 projects that might interest you, discuss with your peers, and come up with some more ideas!

== Step 2: Come back to reality

After you have finished brainstorming a list of potential projects, here is a list of questions to help you filter for the most suitable projects:
1. *Define one major objective for your project.* Be as concise as possible.
2. *Is this goal acheivable in 13 weeks timescale, with 1 day a week commitment mainly from you?*
3. *Where are you sourcing the data?* Downloading public dataset? Generating the data yourself? Make sure there is not privacy issue or license issue when you are using public dataset.
4. *What is main computation?* It is not required in this course you build a complicated model, I am not even going to require you to use any machine learning in your model. Make sure you have access to enough compute at every stage of the project, from collecting data to deployment.
5. *What are the features you want your product to have?* Is it to serve a dataset with some interactibility? Does it have to be very accurate?
6. *Are you excited about the project?* Choosing something you are excited about is almost always beneficial.

When you are choosing your potential projects, keep these three milestone in mind. I think your enjoyment of the class will be maximized if you choose your project according to 

== Examples

Here is a list of sample projects to give you some ideas what is in the scope of this course. _Disclaimer: These projects are closely related to my personal interests, which 
may put them out of the possible projects list because of conflict of interest. As mentioned, the only assignment that is relevant to your grade is the labs, so even if you pick any of the projects listed below, it will not affect your grade at all. But to stay on the safe side, I will not approve any project that is *exactly the same as described below*. Outside of this course, I am truly passionate about these projects. If people are interested in these projects, we can discuss what we can do together._

Example 1: Use computer vision model to extract joint positions from video

Example 2: Using LLM to parse relevant grants information

Example 3: 