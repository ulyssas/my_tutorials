---
title: "How to fix transparent models in Cycles"
categories:
  - Tutorial-Blender
tags:
  - mmd_tools
  - cycles
gallery1:
  - img: Screenshot_2025-07-11_at_12.26.21-8a8c63a92462e322.png
    alt: "thumbnail"
    title: "Image 1"
gallery2:
  - img: Screenshot_2025-07-11_at_12.13.07-2c46a462af8d1a24.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2025-07-11_at_12.31.34-1d035e753ed22466.png
    alt: "thumbnail"
    title: "Image 2"
  - img: Screenshot_2025-07-11_at_12.34.51-579c9365cb49c102.png
    alt: "thumbnail"
    title: "Image 3"
---

When using Cycles, if the model has two or more meshes in the same place, it might become transparent.

This model has blush mesh on top of face, and skirt has backside mesh.

{% include discord-gallery.html id="gallery1" %}

To fix this, you need to separate meshes by materials, hide blush (016照れ) and move back side (00L裙-裙面+) a little bit to prevent clipping.

{% include discord-gallery.html id="gallery2" %}

credit: 星尘 by 椛暗
