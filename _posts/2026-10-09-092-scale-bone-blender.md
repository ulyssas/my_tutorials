---
title: "How to scale models by bone in Blender"
redirect_from:
  - /092
  - /92
categories:
  - Tutorial-Blender
tags:
  - scale
gallery1:
  - img: 1smol.png
    alt: "thumbnail"
    title: "Image 1"
  - img: 2apply.png
    alt: "thumbnail"
    title: "Image 2"
  - img: 3addon.png
    alt: "thumbnail"
    title: "Image 3"
gallery2:
  - img: 4add.png
    alt: "thumbnail"
    title: "Image 1"
  - img: 5sel.png
    alt: "thumbnail"
    title: "Image 2"
  - img: 6evensmol.png
    alt: "thumbnail"
    title: "Image 3"
gallery3:
  - img: 7apply.png
    alt: "thumbnail"
    title: "Image 1"
---

1\. Go to Pose Mode and scale the bones.

2\. Go to Object Mode, select the model mesh and apply `Armature` modifier.

If the model has shape keys, modifiers cannot be applied normally. You can use addons like [Apply Modifiers to Mesh with Shape Keys](https://extensions.blender.org/add-ons/apply-modifiers-with-shape-keys/) instead.

{% include discord-gallery.html id="gallery1" %}

3\. Add new `Armature` modifier to the model mesh, and select the target armature.

At this point, model will be scaled even more, because the bone transforms weren't cleared.

{% include discord-gallery.html id="gallery2" %}

4\. Press `A` key to select all bones and `Apply Pose as Rest Pose`.

{% include discord-gallery.html id="gallery3" %}

Now you can export the result.

credit: Appearance Miku by ままま、アラン・スミシー
