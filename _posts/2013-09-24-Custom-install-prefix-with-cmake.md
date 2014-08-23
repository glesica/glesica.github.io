---
title: Custom install prefix with cmake
layout: post_page
---
I use a custom `--prefix` for many apps I build from scratch. This lets them
live in my home directory and come with me if I install a new OS. It also makes
them easier to manage (and get rid of, if need be). This is trivial for apps
that use Autotools, but I didn't know how to do it for apps that use cmake. Now
I do:

    cmake -DCMAKE_INSTALL_PREFIX=/home/george/local ./
