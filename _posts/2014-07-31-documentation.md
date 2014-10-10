---
layout: page
title: "Widget Documentation"
category: widget
date: 2014-07-31 15:56:31
---

{% for item in site[page.category] %}
  <h2>{{ item.title }}</h2>
  <a name="{{ item.relative_path }}"></a>
  {{ item.output }}
{% endfor %}
