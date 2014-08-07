---
layout: page
title: "Widget Documentation"
category: doc
date: 2014-07-31 15:56:31
---

{% capture dir %}_includes/{{page.category}}{% endcapture %}
{% directory path: {{dir}} %}
  {% capture filename %}{{page.category}}/{{file.name}}{% endcapture %}
  {% pw_include {{ filename }} %}
{% enddirectory %}
