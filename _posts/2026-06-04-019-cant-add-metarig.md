---
title: "What to do when you can't add metarig"
categories:
  - Tutorial-Blender
tags:
  - mmd_tools_append
  - rigify
  - metarig
gallery1:
  - img: Screenshot_2026-06-04_at_7.03.03.png
    alt: "thumbnail"
    title: "Image 1"
gallery2:
  - img: Screenshot_2025-01-11_at_3.00.56-c842dfff1c1a0a40.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2025-01-11_at_3.01.20-bfc690494d32a250.png
    alt: "thumbnail"
    title: "Image 2"
gallery3:
  - img: Screenshot_2025-01-11_at_3.02.41-e79a4538576f344c.png
    alt: "thumbnail"
    title: "Image 1"
gallery4:
  - img: Screenshot_2025-01-11_at_3.05.44-77e20d17a72bf937.png
    alt: "thumbnail"
    title: "Image 1"
---

When adding metarig fails in MMD Tools Append, it's always because bone names are wrong.

{% include discord-gallery.html id="gallery1" %}

I checked the model, and the bones are indeed named wrong:

- 右親指０ should be renamed to 左親指０
- 右親指０.001 should be renamed to 右親指０

親指０.R should be 親指０.L, and 親指０.001.R should be 親指０.R.

{% include discord-gallery.html id="gallery2" %}

You can edit the bone names in this panel. Make sure to edit both names.

{% include discord-gallery.html id="gallery3" %}

After renaming the bones, you can now add metarig.

{% include discord-gallery.html id="gallery4" %}

credit: ぺこらマミー by 如月ふむ
