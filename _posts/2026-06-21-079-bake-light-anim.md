---
title: "How to bake light animation"
categories:
  - Tutorial-Blender
tags:
  - animation
gallery:
  - img: Screenshot_2026-03-30_at_15.01.11-d6014381979b6604.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2026-03-30_at_15.09.35-3ad3ca4a37b6492f.png
    alt: "thumbnail"
    title: "Image 2"
---

If you animated MMD light using `Copy Rotation` (constraints) in `MMD_Light` (the parent of Light), you can select Light (the child) then click `Object > Animation > Bake Action...`.

Then in this popup, enable `Clear Parents` and `Visual Keying`. This will bake position animation coming from the parent to the baking object, then removes parent.

Now, the light should rotate on its own. but MMD Light is broken. so remove constraints from `MMD_Light` then parent the light back.

The result should look like this.

{% include discord-gallery.html id="gallery" %}
