---
title: "Replicating MMD look in Blender"
categories:
  - Tutorial-Blender
tags:
  - npr
  - mmd_tools
  - toon-shading
  - shading
gallery1:
  - img: Screenshot_2025-02-03_at_22.19.38-1cbb38e58500e9dc.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2024-12-21_at_3.06.01-2c224776301670eb.png
    alt: "thumbnail"
    title: "Image 2"
gallery2:
  - img: Screenshot_2026-01-23_at_5.24.03-8ba9a94b7a68f2b9.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2026-01-23_at_5.24.16-3fe15b5e646915e9.png
    alt: "thumbnail"
    title: "Image 2"
gallery3:
  - img: Screenshot_2026-04-08_at_15.44.34.png
    alt: "thumbnail"
    title: "Image 1"
---

For easy preview, you can use Workbench. Set lighting to `Flat` and color to `Texture`. You can also set View Transform to `Standard`.

It is the easiest way to preview MMD models but unfortunately spheres & toon textures don't work. Also, there's no transparency support.

{% include discord-gallery.html id="gallery1" %}

Eevee supports full shader, but you have to setup toon shader instead of realistic shading.

This is an example of toon shader. (before/after)

{% include discord-gallery.html id="gallery2" %}

You can use [MMD Tools Helper](https://github.com/ulyssas/mmd_tools_helper/releases/) to convert MMDShaderDev to toon shader.

{% include discord-gallery.html id="gallery3" %}

There are other toon shaders for Blender:

- [kirytoonshader](https://cginterest.com/2022/08/01/blender-eevee-用の無料トゥーンシェーダー-kirytoonshader-ver2/)
- [KaioToon6](https://eritokaio.gumroad.com/l/KaioToon6)

credit: Lisa, Sucrose, Lumine (Genshin Impact), カルも式初音ミク
