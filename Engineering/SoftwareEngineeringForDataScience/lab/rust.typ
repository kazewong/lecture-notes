#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *An introduction to Rust*
  ]),
  numbering: "1",
)

#import "./style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

This session is somewhat a bias introduction from me because I love `rust`. Here is the backstory: I was first introduced to `rust` in 2022, mostly because of the #link("https://en.wikipedia.org/wiki/Rust_(programming_language)#Mozilla_layoffs_and_Rust_Foundation_(2020%E2%80%93present")[controversy] around it, and I did part of the #link("https://adventofcode.com/")[advent-of-code] (AOC) in rust. At the time, I could not see much point of learning and using `rust`, mostly because I do not know where to use `rust`. I went on a year without using and following `rust`, then I did most of AOC 2023 in `julia`. On December 24, 2023, I came across an article about web assembly (`wasm`), which talks about how `wasm` can be used to distribute code on the web which run on client-side with almost native performance, and how one of the main use case for `rust` is to compile to `wasm`. I unfortunately and willingly sacrifice my 25th day of AOC to learn about `rust` and `wasm`, and it was awesome. For the next couple of months I was exploring `rust` a lot, and it was such a fun experience.

In case you do not realize how interesting it is, let me break it down for you. If you have supervised students or collaborate with others on a code project before, especially with someone using a MacOS, the most difficult part of the job could be getting them to install the dependencies correctly. Nowaday most python package can be install with ```bash pip install [package]```, but sometimes people need to build a package dependencies from source, and that is a highway to nightmare if the code is not supported by a huge community. Being able to write in a programming language like `rust`, compile it to `wasm` and run it directly on a browser without any installation is a complete game changer. No install needed, just open the browser and boom, the code runs. Say in a dire situation like needing to factor some prime numbers in a party, you can just pull out your phone, open the browser and check whether a number is a prime. Isn't that cool?

Beside, I really had a great time coding rust in general. It takes some time to get used to the language, but once you are more familiar with rust, it is a great language to go hard core with. In this lab, we are going to go through the following topics:

= Key Concepts

== Rust is a compiled language

== Rust is strongly and statically typed

== Borrow checker for memory management

The biggest innovation rust brings to the table of programming language is the concept of ownership, or more commonly referred as the borrow checker #footnote[Most people encounter the concept of ownership through the borrow checker.].

= Basic Syntax

== Variables

== Functions

== Control flow

== Borrow checker

= We will write a simple MCMC algorithm this time

To switch things up a bit, instead of coding an insertion sort yet again, we will code a simple Metropolis-Hastings algorithm in rust. More specifically, we are going to sample from a Gaussian distribution with a Gaussian proposal distribution.

== Step 0: Install rust

Follow the instruction on #link("https://www.rust-lang.org/tools/install")[this link]. After installing rust, you should have access to the `cargo` command in the terminal. If you are using VSCode as your IDE, you can also install the `rust-analyzer` extension to get better support for rust.

== Step 1: Clone the class repository

Clone the template repo from #link("https://github.com/KazeClasses/rust_guide.git")[this link].

== Step 2: Implement the Metropolis-Hastings algorithm

The pseudocode for the Metropolis-Hastings algorithm is as follows:

+ Start at an arbitrary point `x`
+ Repeat the following steps for `n` iterations:
  + Sample a candidate point $y$ from a Gaussian distribution with mean $x$ and variance $sigma$, $y tilde N(x, sigma^2)$
  + Calculate the acceptance probability $p = min(1, p(y) / p(x))$, where $p$ is the target distribution
  + Sample a uniform random number $u tilde U(0, 1)$
  + If `u < acceptance probability`, set `x = y`
  + Store `x` in a list

There should be some starter code in the `sampler.rs` file, which contains the following functions: a struct named `State` to store the current state of the sampler, a function named `long_likelihood` as our target function, implementation of the `State` struct with a `new` function, and a `take _step` function to sample a new state from the proposal distribution. We will implement them one by one in the following section.

=== Step 2.1: Creating a struct for the sampler state

=== Step 2.2: Implementing the target function

=== Step 2.3: Implementing the `new` function in the `State` struct

=== Step 2.4: Implementing the `take_step` function in the `State` struct

== Step 3: Test the algorithm

While `rust` is an awesome language and give developer a lot of low level access such as GPU programming, interactive workflow such as making a plot in a data science workflow is not `rust`'s main focus. There are some visualization library in `rust` such as `plotters`, but in order to visualize the result we have generated, the script needed is linked #link("https://github.com/plotters-rs/plotters/blob/master/plotters/examples/normal-dist.rs")[here], which is quite long compared to python. For people who want to try it out, go for it. But this part, we are just going to run a scatter plot with `python` and `matplotlib`.

Once you have implemented algorithm as stated in Step 2, run the following command in the terminal to generate the data:

```bash
cargo run | test.text
```

This should run your main function and dump the output to a file called `test.text`. Now, run the following python script to visualize the result:

```python
import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("test.text")
plt.scatter(data[:, 0], data[:, 1])
plt.show()
```

Now you saw the message saying the code is compiled but not optimized, and you are wondering why. The reason is there are different optimization configurations that offers different trade-offs between compile time and runtime performance. To compile the code with optimization, run the following command:

```bash
cargo run --release | test.text
```

This code should run faster than the previous one.

= Putting the MCMC algorithm on the Web

Now you have familiarized yourself with the basic syntax of `rust`, let's get to the *really* fun part: serving your code as a client-side web application. We are going to compile our `rust` code into `WebAssembly` (`wasm`) and run it in the browser. While `WebAssembly` itself is a programming language, it is more maded to be a compilation target for other languages such as `rust`, `c`, `c++`, meaning you can write in `rust` then compile the code into `wasm`. WebAssembly provides a way to run code in the browser at near-native speed on client side.

== Step 0: Installing wasm-pack

The package we will use to bundle our `wasm` code such that we can use in a normal web development workflow is called `wasm-pack`. To install `wasm-pack`, run the following command:

```bash
cargo install wasm-pack
```

== Step 1: Restructuring the code

== Step 2: Scaffolding the frontend

Since we are going to learn more about frontend development in the future session, we are not going to get fancy here. Instead, we are going to create the bare minimum needed to demonstrate we can run our `rust` code in the browser.

== Step 3: Calling our binary


= Best practices

= Development tips

== Use linter/formatter/extensions

= Noteworthy libraries

== Bevy

One thing you can do

== Axum/Actix

== wGPU

== candle/burn

== Yew/leptos/dioxus

There are a number of frontend frameworks in `rust` that are under active development. The biggest frontend framework so far is #link("https://yew.rs/")[Yew], which is a frontend framework inspired by `React`. The next two that are pretty similar in community size are #link("https://leptos.dev/")["leptos"] and #link("https://dioxuslabs.com/")[dioxus]. While they all sounds pretty cool and can be fun to play with, none of them have reached version 1.0 yet. This means their API is not yet stable and could cause some hassle in your development. For this reason, I am staying with javascript for frontend development, and only use `rust` whenever I have performance critical functions.