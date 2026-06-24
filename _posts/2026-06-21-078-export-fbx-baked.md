---
title: "How to import pose, bake physics then export to FBX"
redirect_from:
  - /078
  - /78
categories:
  - Tutorial-Blender
tags:
  - mmd_tools
  - physics
  - fbx
gallery:
  - img: Screenshot_2026-03-27_at_16.38.54-ba95f70071e2b7ef.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2026-03-27_at_16.40.15-04559f081b0403e6.png
    alt: "thumbnail"
    title: "Image 2"
---

1. Import your model, click `Physics` under Model Setup > Assembly and `Update World` under Scene Setup.
2. Select model root (axis icon), import VPD. If physics broke, toggle `Physics` on/off.
3. Select model mesh then click `Convert to Blender` under Model Setup.
4. Go to later frames (e.g. frame 70) to make sure physics have settled, then select model armature (human icon), File > Export > FBX.

Set these options in FBX exporter:

- Path Mode: `Copy`, enable `Embed Textures` (package icon on the right)
- Limit to `Visible Objects`
- Object Types: `Armature & Mesh` (shift to multi-select)
- Disable `Add Leaf Bones`
- Disable Animation

{% include discord-gallery.html id="gallery" %}

credit: Fischl (Genshin Impact)
