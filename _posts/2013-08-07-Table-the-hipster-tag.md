---
title: Table, the hipster tag
layout: post_page
---
There is a lot of pretty justified hate for `<table>` online. I also see a lot of
people online who hate on `<table>` but don't seem to understand why other people
hate on `<table>`.

The problem with `<table>` was that it was used for layout back in the days before
CSS and `<div>` tags gave us a better option. Table-based layouts tended to be
difficult to modify due to the fact that complex layouts required very deep,
often confusing nesting. But really, the most fundamental problem was that
`<table>` was simply the wrong tag for the job. The tag was designed to allow
the display tabular data, not to create layouts. Table-based layouts weren't
semantic.

Read that last sentence again. The `<table>` tag is the **correct** tag to use
for display **tabular data**. It is not a bad joke that got out of hand like the
`<blink>` tag, it actually has a purpose and can add semantic meaning to
HTML content. HTML 5 added a bunch of new tags like `<article>` that allow
HTML developers to add semantic meaning to their content, this is a good
thing.

Using `<div>` tags to display tabular data, therefore, is actually
committing the exact same sin as using `<table>` tags to create layouts!
In fact, in some alternate universe where `<table>` never existed, it probably
would have been included in HTML 5 (in which case people would be going nuts
over it). So in some sense, `<table>` was semantic before semantic was cool.
