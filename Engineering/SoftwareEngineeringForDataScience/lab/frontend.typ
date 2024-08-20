#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Frontend design*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

In this session, we are going to learn about how to build a modern web app frontend with `Svelte`, a Javascript framework that is most beloved by the community during the time of writing.
This is probably the most important part of this course. One reason is because the frontend is what your users see and interact with, so by extension it is what your user care. No matter how great your package is, if the user cannot use it or do not want to use it, it is not a good software. I am over commiting the term "frontend" here, because I am not only talking about the user interface, but also the user experience. The user interface is what the user see, while the user experience is how the user feel when they are using your software. A lot of scientific software do not aim to have a web frontend to it, and that is completely legitimate since the targeted users are other scientists and researchers who will look into their code. Nonetheless, a good user experience is not excusable even for the packages that do not require a web frontend.
Another reason, perhaps a more legitimate reason, is because there are simply too many options to build your frontend. There are many javascript frameworks to choose from, `React`, `Angular`, `Vue` are the top three javascript frames, and I have dealt with all three of them. You can also write your frontend with `rust`, and there are frameworks like `yew`, `leptos`, `dioxus`. Recently `python` make a big splash in frontend development because of `FastHTML`. This list goes on and on. Then once your are done with choosing your javascript frameworks, it is time to choose your CSS framework. There are `Bootstrap`, `Tailwind`, `Material-UI` just to name a few. *Then*, you can choose your *metaframework* to handle routing and bundle your website, popular choices are `Next.js`, `Gatsby`, `Nuxt.js`, and here we go again. The point is, there are way too many choices, and I have spent so many hours just crawling through this holy war battlefield to try to build my frontend for some projects. In the end, it does not matter to the customer what framework you choose, as long as it works and it looks good, it is a good frontend. The reason I think this session is the most important one, it is because it has the biggest margin of time saving for you. Out of all the experience, I find `Svelte` to be the most fun to work with, and can convert what I think into what I see the most efficiently, so we are going to stick with the `Svelte` framework.

= HTML

= Javascript with Svelte

= Styling with CSS