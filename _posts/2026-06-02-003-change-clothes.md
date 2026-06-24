---
title: "How to change clothes of models"
redirect_from:
  - /003
  - /3
  - /03
categories:
  - Tutorial-Blender
tags:
  - weight-paint
  - modeling
gallery1:
  - img: 2024-10-05_23.29.54-2bb6446d9aef08dc.png
    alt: "thumbnail"
    title: "Image 1"
  - img: 2024-10-05_23.41.01-865bdcfb02f4efed.png
    alt: "thumbnail"
    title: "Image 2"
gallery2:
  - img: 2024-10-05_23.54.48-c90bea4d46a22120.png
    alt: "thumbnail"
    title: "Image 1"
gallery3:
  - img: 2024-10-05_23.56.33-e883e3d54f5bf5b6.png
    alt: "thumbnail"
    title: "Image 1"
gallery4:
  - img: 2024-10-06_0.05.00-6a195fce4b26dad7.png
    alt: "thumbnail"
    title: "Image 1"
---

This is the method I use.

First, match the shape of the clothes.

If you made the clothes by yourself, match the shape by using proportional editing.

{% include discord-gallery.html id="gallery1" %}

Next, parent to armature (press shift while dragging).

{% include videoPlayer.html url="2024-10-05_23.50.42-9f1349291e8bb7af.mp4" %}

Then select the clothes, put original model in [Robust Weight Transfer](https://github.com/sentfromspacevr/robust-weight-transfer) `source`, and click `Transfer Weights`.

{% include discord-gallery.html id="gallery2" %}

Finally, add `Armature` modifier to clothes, and select armature from original model.

After that, you should get working clothes.

{% include discord-gallery.html id="gallery3" %}

{% include discord-gallery.html id="gallery4" %}

credit: 東北ずん子 by は組！
