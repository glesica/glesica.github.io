---
title: Python File IO Buffering
layout: post_page
---
I'm not really sure how I never knew this, or maybe I did know and forgot, but I
recently realized / remembered that you can control how Python buffers writes to
a file. For instance, you can tell it to flush the buffer every line or every
`N` bytes.

This is especially handy (and this is my use-case) if you want to keep tabs on
the progress your script is making. In my situation, I have a simulation that
takes several minutes to run. I like to know how far along it is so I can wander
away and come back without wasting too much time. It is also useful to know
where things stand since it will silently crash on occasion if I've made certain
types of mistakes. I could have it report where it is to stdout, but that's
extra code and in some cases I may not want it to be chatty.

However, every couple thousand iterations it logs some information to a file for
later analysis, this is really the point of the whole thing. These output files
are relatively small, but by opening the log file using:

    open('logfile.log', 'w', 1)

I can then use `tail -f logfile.log` to keep tabs on the simulation as it runs
without introducing extra code or making things chattier than they need to be.

Check out the Python docs for more information: [built-in
functions - open](http://docs.python.org/2/library/functions.html#open).
