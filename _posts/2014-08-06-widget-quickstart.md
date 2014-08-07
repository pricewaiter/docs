---
layout: page
title: "Widget Quickstart"
category: tut
date: 2014-08-06 15:47:41
---


{% capture dir %}_includes/{{page.category}}{% endcapture %}
{% directory path: {{dir}} %}
  {% capture filename %}{{page.category}}/{{file.name}}{% endcapture %}
  {% pw_include {{ filename }} %}
{% enddirectory %}
