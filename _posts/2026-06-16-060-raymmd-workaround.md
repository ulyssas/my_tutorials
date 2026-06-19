---
title: "Ray-MMD workarounds"
categories:
  - Tutorial-MMD
tags:
  - mme
---

These are the tips I found:

- [Use Windows 8 compatibility mode](https://www.deviantart.com/faukataa/art/MME-error-failed-to-reset-MME-REPAIRED-779235049)
- [Enable `Skip Device Validation`](https://x.com/__ssdi/status/1285102579802755072)
- [Update (or downgrade) graphics driver (if it was working before)](https://github.com/ray-cast/ray-mmd/issues/119)
- [Reinstall MME (make sure to install 64bit ver)](https://github.com/ray-cast/ray-mmd/issues/140)
- [Use Discrete GPU (Nvidia, AMD) instead of integrated GPU](https://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q10254680045)

I once tried to use Ray-MMD v1.5.2 on my laptop (which had Intel UHD graphics) and it crashed immediately but Ray-MMD v1.4 & 1.3 did work. Maybe you should switch to those versions.
