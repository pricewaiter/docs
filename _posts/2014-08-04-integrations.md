---
layout: page
title: "Platform Integrations"
category: platforms
date: 2014-08-04 12:12:24
---

{% for item in site[page.category] %}
  <h3><a href="{{ item.url }}">{{ item.title }}</a></h3>
{% endfor %}
