---
layout: page
title: "API Reference"
category: api
date: 2014-07-31 16:00:09
---

Use our Javascript API to send information about your products to PriceWaiter. When a user clicks our Name Your Price Button, they will make an offer on a screen showing this information. Set the product price, name, image and child options using these API calls.

{% for item in site[page.category] %}
<article class="doc-item">
  <a name="{{ item.relative_path }}"></a>
  <h3>{{ item.title }}</h3>
  {{ item.content | markdownify }}
</article>
{% endfor %}
