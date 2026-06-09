---
title: "How to bake textures"
categories:
  - Tutorial-Blender
tags:
  - texture-editing
  - cycles
  - shading
gallery1:
  - img: Screenshot_2025-07-14_at_2.10.51-d0e529174cdc5ec0.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2025-07-14_at_2.13.03-63276f658488ab10.png
    alt: "thumbnail"
    title: "Image 2"
  - img: Screenshot_2025-07-14_at_2.13.57-fe6b52f849fdbcda.png
    alt: "thumbnail"
    title: "Image 3"
  - img: Screenshot_2025-07-14_at_2.17.37-6292abe14b3c5724.png
    alt: "thumbnail"
    title: "Image 4"
gallery2:
  - img: Screenshot_2025-07-14_at_2.24.48-2dbf78f04a2b7408.png
    alt: "thumbnail"
    title: "Image 1"
gallery3:
  - img: Screenshot_2025-07-14_at_2.30.03-21183178d10c71ba.png
    alt: "thumbnail"
    title: "Image 1"
---

With texture baking, you can combine multiple textures into one.

- Select all meshes and Ctrl+J (join)
- Create New texture
- Copy to all materials and click the node again make sure they are **selected (WHITE OUTLINE)**
- Make new UVMap and select it
- Enter Edit mode and UV -> Unwrap Minimum Stretch
- Render Engine -> Cycles
- Bake Type: Diffuse Bake, Contributions: Color
- Hit bake

{% include discord-gallery.html id="gallery1" %}

Now you should have something like this, so save that to somewhere and make new material from it.

{% include discord-gallery.html id="gallery2" %}

{% include discord-gallery.html id="gallery3" %}

credit: Saber by 流云景
