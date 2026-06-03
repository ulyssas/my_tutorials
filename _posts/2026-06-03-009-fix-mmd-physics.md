---
title: "Using MMD rigidbody physics in Blender"
categories:
  - Tutorial-Blender
tags:
  - mmd_tools
  - physics
  - animation
gallery:
  - img: Screenshot_2025-05-08_at_13.09.37-5a0bd2b6552e0b19.png
    alt: "thumbnail"
    title: "Image 1"
---

This is how to enable MMD rigidbody physics in Blender:

1. import the model and assemble all
2. click the empty object and import motion
3. update world. Physics don't work until you update world.

{% include videoPlayer.html url="PhysicsGuide0000-1696-73f84821ecd6e751.mp4" %}

credit: YYB LOVE TRIAL MIKU by YYB & cjpaoshen

if that didn't work, you can

- increase motion margin: Increase the margin when importing the motion.

{% include discord-gallery.html id="gallery" %}

- update world again
- toggle physics on/off: delete the bake, enable physics again and rebake the physics.

You should build the model (enable Physics, SDEF, morph drivers) before importing motion.

If you imported motion without enabling physics, you should go to first frame then toggle physics.
