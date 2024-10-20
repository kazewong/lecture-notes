#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Frontend design*
  ]),
  numbering: "1",
)

#import "./style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

In this session, we are going to learn about how to build a modern web app frontend with `Svelte`, a Javascript framework that is most beloved by the community during the time of writing.
This is probably the most important part of this course. One reason is because the frontend is what your users see and interact with, so by extension it is what your user care. No matter how great your package is, if the user cannot use it or do not want to use it, it is not a good software. I am over commiting the term "frontend" here, because I am not only talking about the user interface, but also the user experience. The user interface is what the user see, while the user experience is how the user feel when they are using your software. A lot of scientific software do not aim to have a web frontend to it, and that is completely legitimate since the targeted users are other scientists and researchers who will look into their code. Nonetheless, a good user experience is not excusable even for the packages that do not require a web frontend.
Another reason, perhaps a more legitimate reason, is because there are simply too many options to build your frontend. There are many javascript frameworks to choose from, `React`, `Angular`, `Vue` are the top three javascript frames, and I have dealt with all three of them. You can also write your frontend with `rust`, and there are frameworks like `yew`, `leptos`, `dioxus`. Recently `python` make a big splash in frontend development because of `FastHTML`. This list goes on and on. Then once your are done with choosing your javascript frameworks, it is time to choose your CSS framework. There are `Bootstrap`, `Tailwind`, `Material-UI` just to name a few. *Then*, you can choose your *metaframework* to handle routing and bundle your website, popular choices are `Next.js`, `Gatsby`, `Nuxt.js`, and here we go again. The point is, there are way too many choices, and I have spent so many hours just crawling through this holy war battlefield to try to build my frontend for some projects. In the end, it does not matter to the customer what framework you choose, as long as it works and it looks good, it is a good frontend. The reason I think this session is the most important one, it is because it has the biggest margin of time saving for you. Out of all the experience, I find `Svelte` to be the most fun to work with, and can convert what I think into what I see the most efficiently, so we are going to stick with the `Svelte` framework.

= Key concept

There are 3 main components in building a frontend: HTML, CSS, and Javascript. HTML defines the structure and content of the web page, CSS defines the style of the web page, and Javascript defines the interactivity of the web page.

== Basic HTML

HTML stands for Hyper Text Markup Language. It is where your content goes. You can just write in HTML and open it in your browser, and you will see your content. A minimal HTML file looks like this:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Page Title</title>
</head>
<body>

<h1>This is a Heading</h1>
<p>This is a paragraph.</p>

</body>
</html>
```

Trying opening this in your browser, you will see a heading and a paragraph. There are many tags in HTML and you can go very far with just HTML. You can find references of HTML tags in #link("https://www.w3schools.com/html/default.asp")[W3Schools], but these days it is probably easier to just ask ChatGPT.

== Styling with tailwind CSS


While HTML gives you the functionality of the webpage, it does not give you the style. Here is where CSS comes in. CSS stands for Cascading Style Sheets, and it defines the style of the webpage, which includes the color, the font, the size, the position of the elements, etc. A minimal CSS file looks like this:

```css
body {
  background-color: lightblue;
}

h1 {
  color: white;
  text-align: center;
}

p {
  font-family: verdana;
  font-size: 20px;
}
```

You can include this CSS file in your HTML file like this:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Page Title</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
...
```

However, keeping track of CSS in a separate file means you have to go back and fro to change the style of a particular element. To make this easier, people have made a number of CSS frameworks that helps the process. I personally uses `Tailwind CSS` because it is very easy to use and it keeps the style in the HTML file, so you can see the style of the element right next to the element. Here is an example of how you can use `Tailwind CSS` (Add `<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">` to the head of your HTML file):

```html
<h1 class="text-4xl text-center text-blue-500">This is a Heading</h1>
<p class="font-sans text-lg">This is a paragraph.</p>
```

== Javascript with Svelte

Finally we arrive at Javascript, which is where the interactivity of the webpage comes from. You can add interactivity to our HTML example like this:

```html
<!DOCTYPE html>
<html>
<head>
  <title>Page Title</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>

<h1>This is a Heading</h1>
<p>This is a paragraph.</p>

<button onclick="myFunction()">Click me</button>

<script>
function myFunction() {
  alert("Hello World!");
}
</script>

</body>
</html>
```

This will create a button that when clicked, will show an alert box with the message "Hello World!". 

Fundamentally Javascript is a language, but really when you hear about Javascript these days, it is more a discussion around which Javascript framework people are using. 
`React`, `Angular`, `Vue` are the big three in terms of popularity. I used to use `React` and `Vue` for my website, but I always felt like I don't like them as much as I want to, and there were something not quite right when I use them. Then I found `Svelte`, which is a Javascript framework that is most beloved by the community during the time of writing. `Svelte` is a compiler that takes your code and compiles it into vanilla Javascript, HTML, and CSS. So in a sense you are not strictly writing Javascript, but you are writing Svelte, and this can be seen as you will write file with `.svelte` extension instead of `.js` extension. A minimal Svelte file looks like this:

```html
<script>
  let name = 'world';
</script>

<h1>Hello {name}!</h1>
```

Isn't this simple? We will go through the basic of Svelte in the next section.

= Buidling your website with SvelteKit

== Write your first component

== Setting up routes

== Interactivity

== Animation

= Design pattern