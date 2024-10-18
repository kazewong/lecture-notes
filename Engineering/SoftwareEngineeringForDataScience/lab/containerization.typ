#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Containerization with docker*
  ]),
  numbering: "1",
)

#import "./style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

If you have experience with being a linux cluster admin, you might have experience with different users deploying different applications and they end up interferring with each others. Also, it is non-trivial to provide the necessary dependencies support to different users, due to potential conflicts in package version.
On the other hand, 

= What is docker

= Trying docker images locally

= Deploying a website on AWS with docker

= Containerizing your application

= Docker compose