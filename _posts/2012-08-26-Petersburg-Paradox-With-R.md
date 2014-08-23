---
title: Petersburg Paradox With R
layout: post_page
---
I've been flirting with the idea of learning to use
[R](http://www.r-project.org/) for awhile now. Previously I have had
[Stata](http://statacorp.com/) available to me and since I learned to use it
pretty well in grad school (round 1), I just couldn't motivate myself to learn
R.

Well all that has changed now. I no longer have easy access to Stata, so R it
is! I've been reading through [a
book](http://search.barnesandnoble.com/Introductory-Statistics-with-R/Peter-Dalgaard/e/9780387790534)
I've had for some time (I have the first edition) and it has been a good read.

But you can't learn something just by reading, at some point you have to do
stuff. So I wrote a couple functions to simulate the [Petersburg
Paradox](https://en.wikipedia.org/wiki/St._Petersburg_paradox), which
I find rather interesting.

The Petersburg Paradox describes a simple gambling game (though not a very smart
one for the house). Here is the description from Wikipedia:

  > A casino offers a game of chance for a single player in which a fair coin is
  > tossed at each stage. The pot starts at 1 dollar and is doubled every time a
  > head appears. The first time a tail appears, the game ends and the player
  > wins whatever is in the pot. Thus the player wins 1 dollar if a tail appears
  > on the first toss, 2 dollars if a head appears on the first toss and a tail
  > on the second, 4 dollars if a head appears on the first two tosses and a
  > tail on the third, 8 dollars if a head appears on the first three tosses and
  > a tail on the fourth, and so on. In short, the player wins 2^(k-1) dollars if
  > the coin is tossed k times until the first tail appears.

Here's the code to simulate one or more games.

<script src="https://gist.github.com/3473645.js"> </script>

There are three functions. The first, ``pburg``, plays a single game and returns
the winnings. The next, ``ipburg``, plays ``n`` games and returns a vector of
the winnings for each round. The final function, ``cumpburg``, returns the
cumulative average of the winnings for ``n`` games. If ``v`` is specified then
only every ``v`` cumulative observations are kept (to make the data plot more
nicely). Here is a sample invocation:

    plot(seq(1,20000,100), cumpburg(20000,100), xlab="Trial #", ylab="# of
    Flips", type="l")

So, what do the results look like? Here's an example (if you compare it against
the graph on Wikipedia you'll see they are similar looking).

![Simulation Results](img/petersburg.png)
