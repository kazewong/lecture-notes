#set page(
  paper: "us-letter",
  header: align(center, text(17pt)[
    *Introduction to transformer*
  ]),
  numbering: "1",
)

#set heading(numbering: "1.")

#outline(
  indent: 1em
)

#set text(
  font: "Times New Roman",
  size: 11pt
)

#set par(justify: true)

= Background

In the first part of this lecture, we are going to explore the basic idea behind a transformer with language modeling.
Once you have the foundation down, generalizing the idea to other modality is conceptually straightforward.

I will have some equations here and there for the purpose of examining them and explain the idea. However, for longer equations and algorithms, I think it rather unnecessary for me to retype them, even though I may put some explaination here.

= Transformer Architecture

== Tokenization and embedding

Given a sentence, the first step we need is to represent the sentence in a format that a computer can understand, i.e. numbers.
To do that, we need to tokenize the sentence.
There are multiple ways to tokenize a sentence, including character-level tokenization, word-level tokenization, and subword-level tokenization. // Add citation.
The tokenizer is basically a bag of words that each element in that bag has an id, whenever one see the corresponding pattern, then one can replace the pattern with that id. One of the most commonly used tokenizers these days is the subword-level tokenizer, which means we can have token like "th" and "e". So let say my tokenizer has two elements, "th" as 0 and "e" as 1, then the representation of "the" with my tokenizer will be [0, 1].
Now this is a horrible tokenizer since we cannot represent special characters such as the start or the end of a sentence, empty space, or any Chinese character. To construct a useful tokenizer in practice, there are specific procedures to recursively build the vocabulary such that they can cover most of the basis.
The detail of specific tokenization scheme is beyond the scope of this lecture, for interested students, these could be useful material for understanding how tokenizers work. 
 
If we live in a quality civilization which every word has exactly one meaning and one meaning only, then we could just stop at the tokenization level. Unfortunately this is not ture for any languages (at least the ones that I know of). The meaning of a word depends on the context, so representing a token with a single number is limiting how much we are allowed to process the token. Say my tokenizer has a vocabulary size of 100, and I want to multiply their value by 2, you can see quickly why this is a problem, since some tokens now will be indistinguishable from other token after the multiplication. If "success" is mapped to 1 and "failure" is mapped to 2, multiplying by 2 is not a very nice process. In other word, the representation space our tokens live in is too dense, which means tokens will run into each other and collide with each other often. In a physicist word, the two tokens become "degenerate" after the mapping.


To solve this issue, we can go to a higher dimension, where the tokens live in a much sparer space that they will rarely run into each other.
$ bold(e) in N#sub[embed] $
The tokenization matrix is basically a N#sub[feature] X N#sub[token] matrix. When you want to get the embedding of a particular token, which is a vector of length N#sub[token] with 1 at the specific token location and 0 elsewhere, you can multiply the tokenization matrix with your token vector, then one will have the embedding vector.
While this sounds like a fancy way to say just build a look-up table, and in some sense it is, representing the tokenizer and input sequence as matrix and vector allows us to process the sequence on a computer way faster than writing a for-loop.
Now instead of going through the token in a

== Position encoding

If we just feed the vector representing our sentence into a transformer, it will not do what one may expect it to do since it is lacking some understanding of the order of token. Imagine processing the sentence: "Tom Marvolo Riddle" with a character level tokenization, since the transformer does not know the order of the token, the representations "I am Lord Voldemort" and "IaLVoldmorte or dm " are indistinguishable from the original sentence.

In order to put the information related to the ordering of the words into the input sequence, we need to "encode" the position of the tokens into a representation which the computer can process.

@Su2021RoFormerET

== Attention Mechanism

The core of a transformer is the attention mechanism, as suggested by the name of the original paper which popularized the transformer architecture: "Attention is all you need" @Vaswani2017AttentionIA. Nowadays there are many different tricks to make the attention mechanism runs more efficiently in a practical setting. Here we are sticking with the vanilla version for simplicity.
The way I like to think about attention is it is essentially learning a soft mask, such that only the relevant

The basic idea of attention in a transformer is well captured by algorithms 3 in @Phuong2022FormalAF.

What do people mean when they said attention is a dot-product?


== Difference between MLP and Transformer

= Common architectures

= Multimodal Transformers

==

= Applications

= Alternative architectures

Mixer @Tolstikhin2021MLPMixerAA

S4 @Gu2021EfficientlyML @Gu2023MambaLS @Cirone2024TheoreticalFO

#bibliography("transformer.bib")