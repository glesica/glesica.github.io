---
title: R Examples, Naive Sentiment Analysis
layout: post_page
---

I am going to be giving a talk on R this spring so I was thinking about some
demonstrations that would be easy to understand but still highlight some of the
interesting features of the R language. One of the ideas I came up with was to
implement a "What does Reddit think about this?" function. It uses the Reddit
API (which is super easy to use) to grab link titles related to a particular
topic (using search) and then runs a really naive, but easily understood
sentiment analysis on them. The sentiment analysis function is given below.

<script src="https://gist.github.com/glesica/5026233.js"></script>

One of the cool things about R (along with other scientific languages like
Octave/Matlab and, more recently, Julia) is that operations can be vectorized.
So, for example, the function above can be called with a single string, or a
vector of several string, in which case the return value is a vector of
sentiment scores. But R also has loops, which can make code easier to read, as
in this case.
