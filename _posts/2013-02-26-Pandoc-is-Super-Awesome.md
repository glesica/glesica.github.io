---
title: Pandoc is Super Awesome
layout: post_page
---

In the past, I've used a couple of nice LaTeX templates for various types of
documents. I had a homework and project template, a letter template and a couple
random ones. I've also used Beamer for snazzy presentations. The results, as
always where LaTeX is involved, are lovely. However, editing a full-on Tex file
for each document usually seemed like overkill. In most cases, I just wanted
nicely formatted text, usually with a couple equations or code snippets.

Then I discovered [Pandoc](http://www.johnmacfarlane.net/pandoc/). Pandoc is an
incredibly powerful "document converter". It can convert between a variety of
text-based formats (HTML, LaTeX, Markdown, ODT, and many more). But the nicest
thing about it is that it has its own superset of Markdown that supports all the
features missing from vanilla Markdown that make it inappropriate for complex
documents (tables being one).

Pandoc can convert its own (or vanilla) Markdown to many other formats, among
them PDF (through LaTeX). This is a tremendous advantage for creating attractive
documents without too much effort. I can write up an assignment or project using
Markdown and get a lovely PDF directly or, if I really want to fiddle with the
LaTeX I can just convert the first draft to that, and go from there.

Pandoc also supports templates and has its own template system, which makes
customizing the result for different types of documents pretty simple. You
can even put LaTeX code inside a Markdown document and let Pandoc sort the whole
mess out!

