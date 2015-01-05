---
layout: page
title: "Platform Integrations"
description: "List of e-commerce platform apps for the Name Your Price Button."
category: platforms
date: 2014-08-04 12:12:24
---

These apps will allow easy installation of our _"Make an Offer"_ or _"Name Your Price"_ buttons. Pick your platform below to start the integration process. Other platforms may use our [custom install process](/).

{% for item in site[page.category] %}
  <h3><a href="{{ item.url }}">{{ item.title }}</a></h3>
{% endfor %}
