---
title: "General advices about MMD in Blender"
redirect_from:
  - /057
  - /57
categories:
  - Tutorial-Blender
tags:
  - mmd_tools
  - shading
  - animation
---

## textures aren't working

If the file names are garbled, they have CJK letters so use [bandizip](https://bandisoft.com/bandizip/) to extract ZIP files.

## lighting difference?

They are different softwares so the default looks are very different.

related article:

- [Replicating MMD look in Blender]({{ site.baseurl }}{% post_url 2026-06-03-012-blender-mmd-look %})

## hair & skirt have bones?

Even if they are not visible in MMD, they use bones. Those bones are controlled by physics engine in MMD.

related article:

- [Using MMD rigidbody physics in Blender]({{ site.baseurl }}{% post_url 2026-06-03-009-fix-mmd-physics %})

## Do I have to prepare models in Blender?

If you are animating MMD models (importing VMD) in Blender, you have to do some setups.

For example, SDEF and some morphs won't work as-is.

related article:

- [SDEF in Blender]({{ site.baseurl }}{% post_url 2026-06-04-022-sdef-in-blender %})
- [How to make morphs usable in Blender]({{ site.baseurl }}{% post_url 2026-06-02-007-setup-morph %})
