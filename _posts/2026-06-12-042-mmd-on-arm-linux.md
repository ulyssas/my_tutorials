---
title: "Running MMD on Asahi Linux"
redirect_from:
  - /042
  - /42
categories:
  - Tutorial-MMD
tags:
  - misc
gallery1:
  - img: 20250828_182210-c645c14d3f1e3d06.png
    alt: "thumbnail"
    title: "Image 1"
gallery2:
  - img: 20250828_180758-e3b26aeae1b54be2.png
    alt: "thumbnail"
    title: "Image 1"
---

I got MMD & MME working on Asahi Linux! I used Steam & Proton for this setup.

{% include discord-gallery.html id="gallery1" %}

Unlike in macOS, you can have proper Vulkan, and DXVK works perfectly!

When I installed MME, it crashed with "Initialization Error", but after installing `d3dx9_43` (native, builtin) and `d3dcompiler_43` (native) via winetricks, it worked on Proton 9.0-4.

> this is similar to what you have to do when using [BepInEx under Wine/Proton](https://docs.bepinex.dev/articles/advanced/proton_wine.html).

On regular Linux x86_64 install, `protontricks` should work just fine, but because I'm on ARM, some shell scripting was needed.

{% gist 1f24a5fdefc803c8b564e2258386e27c %}

Also, you probably have to set to Japanese locale/language like this:

```sh
export LANG=ja_JP.UTF-8;export LC_ALL="ja_JP"
```

{% include discord-gallery.html id="gallery2" %}

credit: にがもん式霊夢, Appearance Miku by ままま
