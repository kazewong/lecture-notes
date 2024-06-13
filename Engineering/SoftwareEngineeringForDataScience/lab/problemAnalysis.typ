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