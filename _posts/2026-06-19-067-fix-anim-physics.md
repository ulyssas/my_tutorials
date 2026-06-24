---
title: "How to fix physics simulation in MMD"
redirect_from:
  - /067
  - /67
categories:
  - Tutorial-MMD
tags:
  - physics
  - animation
gallery1:
  - img: swappy-20260318-095821-d23110ef3e181a2a.png
    alt: "thumbnail"
    title: "Image 1"
gallery2:
  - img: Screenshot_18_3_10-06-28_4589-c3532ddbd5795591.png
    alt: "thumbnail"
    title: "Image 1"
gallery3:
  - img: Screenshot_18_3_10-03-10_7309-25132266866873d5.png
    alt: "thumbnail"
    title: "Image 1"
---

First, you should enable `Trace Mode` from `physical operation`. Trace Mode allows you to calculate & stop physics while editing motion.

{% include discord-gallery.html id="gallery1" %}

Then, move to starting position and register skirt keyframes.

Click on `Null_149` (you should find スカート in Japanese mode) to select all skirt bones, disable physics from `bone manipulation` then click register. Now the registered keyframes will be diamonds rather than crosses.

After that, move 1 frame and do the opposite (**enable** physics and register). Keyframes will look like this:

{% include discord-gallery.html id="gallery2" %}

This isn't perfect but makes it a little bit better.

{% include discord-gallery.html id="gallery3" %}

credit: 驪駒早鬼 by 塩蛙
