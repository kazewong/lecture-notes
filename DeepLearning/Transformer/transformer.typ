#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Introduction to transformer*
  ]),
  numbering: "1",
)
#outline()

#set par(justify: true)

= Background

In the first part of this lecture, we are going to explore the basic idea behind a transformer with language modeling.
Once you have the foundation down, generalizing the idea to other modality is conceptually straightforward.

Here are some useful references for interested students:
@Phuong2022FormalAF

= Transformer Architecture

== Tokenization

Given a sentence, the first step we need is to represent the sentence in a format that a computer can understand, i.e. numbers.
To do that, we need to tokenize the sentence.
There are multiple ways to tokenize a sentence, including character-level tokenization, word-level tokenization, and subword-level tokenization. // Add citation.

== Position encoding

If we just feed the vector representing our sentence into a transformer, it will not do what one may expect it to do since it is lacking some understanding of the order of token. Imagine processing the sentence: "Tom Marvolo Riddle" with a character level tokenization, since the transformer does not know the order of the token, the representations "I am Lord Voldemort" and "IaLVoldmorte or dm " are indistinguishable from the original sentence.

@Su2021RoFormerET

== Attention Mechanism

The core of a transformer is the attention mechanism, as suggested by the name of the original paper which popularized the transformer architecture: "Attention is all you need" @Vaswani2017AttentionIA. Nowadays there are many different tricks to make the attention mechanism runs more efficiently in a practical setting. Here we are sticking with the vanilla version for simplicity.

= Difference between MLP and Transformer

= Common architectures

= Multimodal Transformers

== Vision transformer

= Applications

#bibliography("transformer.bib")