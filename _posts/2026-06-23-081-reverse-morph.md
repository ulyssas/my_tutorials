---
title: "How to reverse & apply vertex morphs"
redirect_from:
  - /081
  - /81
categories:
  - Tutorial-MMD
tags:
  - pmxe
  - morphs
gallery1:
  - img: Screenshot_2026-04-11_at_4.35.50-48d0f646f063dd4d.png
    alt: "thumbnail"
    title: "Image 1"
  - img: Screenshot_2026-04-11_at_4.39.59-8dc330a9cd53d700.png
    alt: "thumbnail"
    title: "Image 2"
gallery2:
  - img: apply.png
    alt: "thumbnail"
    title: "Image 1"
---

You can use [闇鍋プラグイン (EtcPlugin)](https://bowlroll.net/file/9765) to reverse & apply vertex morphs.

- morph reverse: 頂点モーフからその逆モーフを作成 (under MORPH)
- morph apply: 頂点モーフの変形後位置に頂点の位置を変更する (under VERTEX)

{% include discord-gallery.html id="gallery1" %}

Also, in TransformView, if you uncheck `Vertex Morph Normalize - Save/Update`, you can apply the vertex and group morphs. Bone & UV morphs can be applied without unchecking normalize, but material morphs can never be applied.

To apply morphs, change morph values from bottom corner and click `Update Model -Curent Deformed State-`.

{% include discord-gallery.html id="gallery2" %}
