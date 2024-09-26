#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Machine learning libraries*
  ]),
  numbering: "1",
)

#import "../style.typ": style_template
#show: doc => style_template(doc,)

= Foreword

Now we have seen the three languages that I think are relevant for data science, let's have a look of the libraries that can be used as the core of your projects. Instead of teaching something that is most mainstream like #smallcaps[PyTorch], I will focus on the libraries that I think they may stand out in their own unique way. In research, you are often given a task that no one has ever done before (at least that's the ideal, while in reality that may be techinically true, but in practice you are building on top of an example that is very similiar to what you want to do.), so I do not see the point of just teaching you how to build a [Your favorite architecture]. We will go through the following libraries: `Jax` in `Python`, `Flux` in `Julia`, and `Burn` in `Rust`, and we are going to go through what their unique strengths are.

= Jax

== Just-in-time compilation

== Automatic differentiation

== Vectorization and parallelization

== Equinox

= Flux

= Burn

