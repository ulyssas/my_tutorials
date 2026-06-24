---
title: "Turning Pelvis into MMD lower body"
redirect_from:
  - /071
  - /71
categories:
  - Tutorial-Blender
tags:
  - rigging
  - conversion
gallery:
  - img: lowerbody-50b0ce72c410c550.png
    alt: "thumbnail"
    title: "Image 1"
---

Most humanoid models (FBX, VRM, etc.) have a bone called pelvis (also called hips or spine).

It works similar to MMD `腰` (back) bone, but `腰` is semi-standard bone that controls `下半身` (lower body) bone.

In order to convert to MMD models, you first have to turn pelvis into `下半身`.

Pelvis bones usually exist at the top of the hierarchy. You should change spine (= `上半身`, upper body) parent to the same as pelvis bone, so that upper body and lower body (originally pelvis bone) can rotate on their own.

{% include discord-gallery.html id="gallery" %}
