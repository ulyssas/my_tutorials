---
title: "How to force the model to stay in the same position"
categories:
  - Tutorial-MMD
tags:
  - animation
gallery1:
  - img: Screenshot_2026-06-13_at_16.07.38.png
    alt: "thumbnail"
    title: "Image 1"
gallery2:
  - vid: no_340.mp4
    alt: "thumbnail"
    title: "Video 1"
  - vid: yes_340.mp4
    alt: "thumbnail"
    title: "Video 2"
---

> This doesn't work for motions that uses 全ての親. Use [MotionSupporter](https://bowlroll.net/file/233713) first to remove 全ての親 keys.

1. import the motion to the model that has Master (全ての親)
2. range select Center (センター) then copy
3. select Master then `edit > paste to different frame` (Model moves twice as fast)
4. `edit > multiply of bone frame position-angle` then

bone place X \* -1.0, Y \* 0.0, Z \* -1.0, angle X \* 0.0, Y \* 0.0, Z \* 0.0

{% include discord-gallery.html id="gallery1" %}

Now Master will cancel the Center position.

before/after:

{% include discord-gallery.html id="gallery2" %}

You can export the motion then use [MotionSupporter](https://bowlroll.net/file/233713) to offset Master position.

credit: Lumine (Genshin Impact)
