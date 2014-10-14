---
layout: page
title: "Additional Functionality"
category: misc
date: 2014-09-04 12:12:24
---

{% for item in site[page.category] %}
  <h3><a href="{{ item.url }}">{{ item.title }}</a></h3>
{% endfor %}
