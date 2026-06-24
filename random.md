---
layout: default
title: "Random Tutorial"
permalink: /random/
sitemap: false
---

<div style="text-align: center; margin-top: 50px;">
  <h1>Picking a random tutorial...</h1>
  <p>Please wait a moment.</p>
</div>

<script>
  const posts = [
    {% for post in site.posts %}
      "{{ post.url | relative_url }}"{% unless forloop.last %},{% endunless %}
    {% endfor %}
  ];

  if (posts.length > 0) {
    const randomPost = posts[Math.floor(Math.random() * posts.length)];
    window.location.href = randomPost;
  } else {
    window.location.href = "{{ '/' | relative_url }}";
  }
</script>
