---
title: Exploring the Phillips Curve
layout: post_page
---
I'm taking a course on data visualization this semester and our first project
was pretty simple: find some data on the Bureau of Labor Statistics web site and
visualize it using some kinda of scatter plot to support a hypothesis. We also
have to make use of a best-fit line. Of course there are a number of principles
to think about, but that's not important.

Having a background in economics, BLS data was in my wheelhouse, so to speak. I
pondered a suitable hypothesis and settled on demonstrating the presence of the
Phillips Curve in actual BLS data. [The
Phillips Curve](https://en.wikipedia.org/wiki/Phillips_curve) is essentially a
theory that says that the unemployment and inflation rates are negatively
correlated.  In other words, if you push unemployment down through some sort of
policy, inflation will rise.

Of course, like so many economic theories, there is debate as to whether the
Phillips Curve actually exists or not. But I'm not trying to get this published
or anything, so whatever.

Several (non-academic) articles I found online dealt with the Phillips Curve in
an overly simplistic manner. The procedure appeared to be: plot the data since
1948, draw a line through it, judge the theory based on the slope of the line.
The problem with this is that, without going into too much detail, the curve can
move around, up, down, left, right. This happens (at least in theory) in
response to changes in variables other unemployment and inflation.

This means that over a sufficiently wide range of time the data will end up
looking like a cloud of points, with no particular pattern at all.

It occurred to me that breaking the data into smaller ranges, during each of
which other variables could be expected to stay relatively constant, would be
a helpful start. As it turns out, this yields some nifty results, seen below.

![Phillips Curve Data](img/phillips/plot.png)

The plot above highlights the data points approximately by decade. Note, for
instance, the dark blue cluster in the upper right, they appear to form a curve
that is convex to the origin, just as they theory says they should.

As interesting as this plot is, there is a ton of information here. In order to
make better sense of it, I decided to create a small, interactive, web app with
[R](http://r-project.org) and [Shiny](http://www.rstudio.com/shiny/). The app
lets you subset the data by year and cluster into different size groups. You can
also adjust the time lag (the assumed time between the change in unemployment
and the subsequent change in inflation, or vice versa).

Take a look and feel free to play around with it and decide whether you think
the Phillips Curve really exists!

### [Exploring the Phillips Curve](http://lesica.com:3838/george/phillips/)
