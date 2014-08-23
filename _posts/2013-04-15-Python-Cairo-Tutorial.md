---
title: Python Cairo Tutorial
layout: post_page
---

Recently I was looking for a way to draw some nice vector images from Python. I
had been using Matplotlib, but since I was sort of shoe-horning my application
into it, performance was terrible and the images looked pretty bad.

Enter Cairo. Cairo is a vector graphics library written in C but with bindings
available for a number of languages, including Python. Performance is quite
good, and the images come out looking really nice. It supports output to either
SVG or PNG as well.

I found the existing tutorials a bit lacking, so I decided to put together my
own. This is partly for my own purposes (memory enhancement in the future) but
hopefully others will find it useful as well.

## Getting Started

The [Cairo documentation](http://cairographics.org/documentation/)
is quite nice, though it covers the C version of the API, so it will be less
useful for anyone not familiar with C or anyone who is in a hurry. There is also
[documentation specific to Pycairo](http://cairographics.org/pycairo/)

Cairo images are created by defining a "surface", which primarily handles
outputting the image you create to a file, and a "context", which provides the
actual drawing tools that you will use to define an image on a surface. 

Cairo is incredibly powerful, and I'm only going to cover a small part of it.
Specifically, how to create basic vector and raster image files. Let's start
with an example.

## Simple Example

Let's take a look at a simple example that demonstrates several of the
interesting and useful aspects of Cairo.

<script src="https://gist.github.com/glesica/5426852.js"></script>

The first thing to note is that a `Context` is literally what it sounds like.
The context object holds the current "state" of the drawing. This should be
familiar to people who have worked with other graphics packages before, such as
OpenGL.

I think the easiest way to think about this is to imagine a pen or a
brush hovering over a sheet of paper (the analogy isn't perfect, but it is close
enough for our purposes). The `move_to` method moves the pen to the specified
coordinates without letting it touch the paper. The `line_to` method does the
same, only with the pen or brush pressed to the paper.

The `set_source_rgb` method (and its cousin, `set_source_rgba` that includes an
alpha, or transparency, channel) change the color of the brush. Note that this
is a stateful change, so changing the color will affect all future drawing
unless the color is changed again, either manually or using the `save` and
`restore` methods.

The `save` and `restore` methods allow us to remember the current state of the
context. We can then change it, for instance we might want to use a different
color, and retrieve the saved state later with `restore`. This saves us from
having to specify complicated settings more than once.

Finally, note that creating a PNG differs quite a bit from creating an SVG. This
is something that I researched quite a bit and actually had a hard time
believing. Basically, to write the SVG you have to be completely finished with
your drawing. You then call the `finish` method, which writes the file, but also
prevents you from further modifying the surface (attempting to do so will raise
an exception). On the other hand, saving a PNG is simple and can be done
multiple times.

## Domain-Specific Abstraction

Of course the kind of thing shown in the example above is nice for messing
around, but when you have a specific purpose in mind you will generally want to
abstract Cairo's generic tools a bit. For instance, I wanted to draw circles,
each of which represented a particle in a 2D simulation. Below is a function
that would map my problem domain into Cairo in a fairly simple manner.

    def draw_particle(context, particle):
        context.save()
        context.arc(particle.x, particle.y, particle.r, 0, 2 * pi)
        context.fill_preserve()
        context.set_source_rgba(particle.color)
        context.stroke()
        context.restore()

Note that the `fill` and `stroke` methods have two versions each. The plain old
method and a `_preserve` variant. The difference is that the default behavior is
to forget about the line or other shape that has been defined after it has been
stroked or filled. The `_preserve` methods don't have this behavior, so you can
stroke a shape, then fill it without having to redefine it.
