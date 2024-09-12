#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Introduction to Julia*
  ]),
  numbering: "1",
)

#import "./style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

`julia` is a language which I have a love-hate relationship with. If the first programming language you learned is `python`, I think `julia` offers a fresh take on what you can do with computers while having the interactiveness of `python`. It has a lot of modern features built into the language, such as its just-in-time (JIT) compilation, multiple dispatch, and metaprogramming capabilities. It also comes with its own package manager, which is quite nice to use. This makes `julia` a great "advance" language for data scientists to learn after `python`. However, the `julia` ecosystem is not nearly as mature as `python`, as a lot of its packages are maintained by small communities, and some time they lead to down some dead ends.

Nonetheless, `julia` is a fun language to play with. `julia` often offers more flexibility and performance than `python`, and its ecosystem has a lot of interesting research codes which are often not found in other ecosystem. So in this lab, we are going to go through 

#outline(title: [Outline \ ], depth: 2, indent: 1em)

#pagebreak()

= Key Concepts

== Julia has a JIT compiler

`julia` has a just-in-time(JIT) compiler, which means that the code you write is compiled to machine code on the fly. This allows you to write code that is as fast as C or Fortran, while still having the interactivity of `python`, such as a for-loop. This implies the first time you run a function in `julia` it will compile the function before executing it. This compilation will incur some overhead, but then the subsequent times using the function will just call the cache such that you don't have to pay the overhead again and again. We will dive into this later in the lab.

== Julia has multiple dispatch

For the people who learn `python` as their first programming language, and perhaps engaged in some projects related to `python`, you may find `julia` quite odd in the sense that *it does not have classes*. Instead, `julia` has a killer feature that is called multiple dispatch, meaning the exact function being execute depends on the type of arugments. This gives `julia` developers a lot of freedom in composing different software. We are going to see more detail about why this is an awesome feature later in this session.

== Julia has a package manager

= Basic Syntax

== Variables

`julia` is similar to `python` in many ways. For example, `a = 1` will define a variable `a` with the value of `1`. As we mentioned, `julia`'s multiple dispatch system relies on the type of the variable to determine which function to call, so it is important to learn how to inspect the type of a particular variable. You can check the type of a variable by using the `typeof` function. If you run `typeof(a)`, it will return `Int64` because `1` is an integer.

To define a list, the basic syntax is similar,  that is `a = [1, "hello", 3.14]`. However, in order to get a list from say a range, the syntax is a bit different. Instead of `a = list(range(1, 10))`, you would write `a = collect(1:10)`. There is a bunch of functions related to collection you can checkout here #link("https://docs.julialang.org/en/v1/base/collections/")[here].

From a `python` background, the biggest difference in defining variables in `julia` is in dictionary. In `python`, you would define a dictionary like this `a = {"key": "value"}`, but in `julia`, you would define a dictionary like this `a = Dict("key" => "value")`. Accessing an element remains the same as `python`

Simliar to `python`, if you have a variable defined by referencing another variable, i.e. `b = a` while `a = [1, 2]`, changing element in `a` will also change `b` automatically.

== Writing Structs

While there is no class in `julia`, it is still useful to be able to bundle a bunch of variables together so you can access them easily. This called composite type in `julia`, and we use the `struct` keyword to define them. For example, you can define a struct like this:

```julia
struct myStruct
  name::String
  somedata::Vector{Int}
end
```

Note `::` syntax is used to specify the type of the variable. In this case, `name` is a `String` and `somedata` is a vector of `Int`. You can create an instance of this struct like this:

```julia
a = myStruct("hello", [1, 2, 3])
```

== Functions

It is fair to say `julia` centers around writing functions, and one of its most interesting features is multiple dispatch. In `julia`, you can define a function like this:
```julia
function f(x)
    return x + 1
end
```
Note that `julia` does not care about indentation, however it is still a good practice to indent your code properly.

So far we haven't seen much difference between `python` and `julia` in function definition. However, here comes the interesting bit, a function with the same name but with different argument types will be treated as a different function. For example, you can define a function like this:

```julia
function f(x::Int)
    return x + 1
end
```

And you can define another function with the same name but with a different argument type like this:

```julia
function f(x::String)
    return x * "!"
end
```

Now if we call `f(1)`, it will return `2`, and if we call `f("hello")`, it will return `hello!`.
This is really powerful (and somewhat cursed), since it reduces the coding task to defining your struct and manipulating it with the function with argument that takes that sepcific type. This basically acts as a replace for method in class in `python`.

== Control Flow

The syntax for defining control flow in `julia` is similar to `python`. The major difference between `python` and `julia` in syntax is since `julia` does not care about indentation, you need to use `end` to close the block of code. For example, you can define a for-loop like this:

```julia
for i in 1:10
    println(i)
end
```

`while` loop and `if-else` statements are also similar to `python`, and you can find more detail #link("https://docs.julialang.org/en/v1/manual/control-flow/")[here]

What I want to highlight is `julia`'s JIT capability. Let's write a function that takes a long time to run:

```julia
function add100000000(x)
    for i in 1:100000000
        x += 1
    end
    return x
end
```

You can try to run this counter part in `python` and you will see that `julia` is much faster. And we can even dig into the internal of the function by using `@code_llvm` to see the LLVM code generated by the function. In the `julia` REPL, you can run `@code_llvm add100000000(1)` to see the LLVM code generated by the function, and you will see that the cached LLVM intermediate representation (IR) code actually already have the number of iterations in the code. This gives us hint that `julia` is capable to optimize the code and run it more efficient than `python`.

= Exercise: Writing an insertion sort algorithm again

== Step 0: Download Julia

Follow the instruction on #link("https://github.com/JuliaLang/julia")[here] to install `julia` on your machine.

== Step 1: Clone the repository

Fork #link("https://github.com/KazeClasses/julia_guide")[this repository] and clone it to your local machine.

== Step 2: Implement the sorting algorithm

Open the `src/insertion_sort.jl` file and implement the insertion sort algorithm within `insertion_sort` function.

== Step 3: Test the algorithm

Once you have implemented the body of the algorithm, start the `julia` REPL and run the following command to test the algorithm:
1. Press `]` to enter the package manager mode.
2. Run `activate .` to activate the project.
3. Run `test` to test the algorithm.

= Packaging code

Packaging code in `julia` could take a while to get used to. Instead of creating submodules by directories and `__init__.py`, fundamentally in `julia` you just ```julia include("file.jl")``` in your main module. Any subdirectories is just to group those files together. And instead of using syntax like ```python from scipy.optimize import minimize``` to import a function from a submodules, one needs to export functions that are written such that they can be imported by the main module. 

== Step 0: Looking at some examples
Have a look these three examples: #link("https://github.com/SciML/DifferentialEquations.jl")[DifferentialEquations.jl], #link("https://github.com/FluxML/Flux.jl/tree/master")[Flux.jl], and #link("https://github.com/JuliaGPU/CUDA.jl/tree/master")[CUDA.jl].

== Step 1: Create the main module

== Step 2: Create a sub-module

= Building documentation

== Documenter.jl

= Writing tests

== Add Test to the dependency

Start the julia REPL, run `]` to enter the package manager mode, and run `add Test` to add the `Test` package to the project.

== Writing test suites

There are two levels of writing tests in `julia`: \@test and \@testset. The purpose of \@test is to test a single function or statement, which is similar to test functions you have learned in the `python` session. On the other hand, you don't want your entire testsuite to exist whenever one function fails. In this case, you can use \@testset to group tests together and isolate them from the rest of the tests.

== Step 1: Write tests for the insertion sort algorithm

== Step 2: Group tests together with \@testset

== Running tests

You have already tried running tests in the previous exercise. Once again, the way to run tests is to start the `julia` REPL, enter the package manager mode by pressing `]`, and run `test` to run the tests.

= Best practices

== All roads lead to Rome

In `python`, the intention of the language is to have only one obvious way to a solution. Although that is often violated and people dunk on their motto, it is still largely true. Creating modules, writing classes, and writing tests, they can all be done in a similar fashion. On the other hand, there are many ways to do the same thing in `julia`. We have seen the three different ways to build your package hierarchy, and the support of metaprogramming in `julia` together with multiple dispatch allows you to come with wild solutions to your problems.

== Type stability

== Write functions

This is something that took me a while to really understand what do they mean by 

= Development tips

== Don't be afraid of for loop and other low level operation

As you have seen in the control flow section, `julia` JIT compiler allows you to implement things like a for-loop without worrying about its performance implication. In `python`, the typical workflow is you try to break down a task into a bunch of functions that someone has implemented a high performance c function underthehood, therefore it is always good to use libraries like `numpy` and `scipy`. However, once in a while you will stumble upon a problem that there is no obvious package to call, and it could be a stuck in `python`. People then turn to tools like `cython` to improve the performance of the performence critical bit of their code. `julia` is try to solve this "two languages problems", which is if you want high performance `python`, sometime you also need to know low level programming languages like `c`. Instead, in `julia` you never need to do that, everything is in `julia`. You are allowed to write for loops and other patterns that may not be encouraged in `python`. This liberates the developers from concerns of design pattern, instead we can focus on really delivering the algoritm.

== Don't be afraid to look into someone's source code.

Another merit of brough by `julia` one language system is you don't need to worry about hitting some other language when trying to dig through someone's code. Again, everything is in `julia`, and what even nicer about this is `julia` is supposed to be composable. Let say you have some function that works on a generic array type

== Working with IDEs

= Noteworthy libraries

== The SciML ecosystem

== Flux
