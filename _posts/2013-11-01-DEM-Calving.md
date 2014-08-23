---
title: DEM Calving
layout: post_page
---
The goal of this project is to build a model of the ice sheet calving process
using the Discrete Element Method. There are several steps in this process that,
perhaps, differentiate it from other common simulation techniques. First, there
is no explicit mathematical model of the process under study. Instead, a
geometrical analogue is constructed using discrete particles and various forces
acting on and between them.

The first tricky problem is to construct the geometry to be studied. This can be
slightly complicated, especially for a stiff, brittle material like ice because
any excess energy stored in the inter-particle bonds can cause strange behavior
in the simulation. I employ a standard DEM "trick" to overcome this problem. I
run a pre-simulation that adds particles to the simulation environment slowly
and allows them to settle. A video is included below.

<iframe src="//player.vimeo.com/video/75344380" width="100%" height="550"
frameborder="0" webkitallowfullscreen mozallowfullscreen
allowfullscreen></iframe>
