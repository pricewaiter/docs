---
layout: page
title: "API Reference"
category: ref
date: 2014-07-31 16:00:09
---


{% capture dir %}_includes/{{page.category}}{% endcapture %}
{% directory path: {{dir}} %}
  {% capture filename %}{{page.category}}/{{file.name}}{% endcapture %}
  {% include {{ filename }} %}
{% enddirectory %}
