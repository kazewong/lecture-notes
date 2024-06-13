#import "./style.typ": style_template
#show: doc => style_template(doc,)
#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Semester project template*
  ]),
  numbering: "1",
)

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

Here is a list of potential projects to give you some ideas what is in the scope of this course, but I always encourage and prefer people work on something they are truly passion about:

For example, using computing vision algorithm to track the take-off velocity of myself in my high jump tapes is a good example. Solving world hunger