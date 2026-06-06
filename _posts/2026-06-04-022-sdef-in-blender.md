---
title: "SDEF in Blender"
categories:
  - Tutorial-Blender
tags:
  - sdef
  - mmd_tools
gallery1:
  - img: Screenshot_2026-06-04_at_17.09.33.png
    alt: "thumbnail"
    title: "Image 1"
gallery2:
  - img: Screenshot_2026-06-04_at_17.20.43.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2026-06-04_at_17.21.35.png
    alt: "thumbnail"
    title: "Image 2"
gallery3:
  - img: Screenshot_2026-05-05_at_8.42.46.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2026-05-05_at_8.42.12.png
    alt: "thumbnail"
    title: "Image 2"
---

SDEF is a different kind of skinning algorithm. Blender uses BDEF (bone deformation), but in MMD, you can use SDEF (spherical deformation).

It works better when the mesh bends a lot, like joints.

If you open the model in PmxEditor and set the view to `Weight Type`, SDEF will turn purple.

{% include discord-gallery.html id="gallery1" %}

SDEF is not supported in Blender natively, so it requires building a driver. When the driver is enabled, a new shape key `(mmd_sdef_skinning)` will be added.

Since the armature modifier now has SDEF mask, the model might behave strangely.

{% include discord-gallery.html id="gallery2" %}

SDEF driver might occasionally break, so you may need to press SDEF button again. In my experience, `Bulk` mode seems to be more stable.

{% include discord-gallery.html id="gallery3" %}

credit: Appearance Miku by ままま
