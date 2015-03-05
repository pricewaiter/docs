---
layout: page
title: "Widget Configuration"
description: "How to setup the Name Your Price button for e-commerce stores."
category: widget
date: 2014-07-31 15:56:31
---

{% for item in site[page.category] %}
  <article class="doc-item">
    <a name="{{ item.relative_path }}"></a>
    <h3>{{ item.title }}</h3>
    {{ item.output }}
  </article>
{% endfor %}
