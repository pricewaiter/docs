---
layout: page
title: "Other Documentation"
category: dwn
date: 2014-08-04 12:12:24
---

{% capture dir %}_includes/{{page.category}}{% endcapture %}
{% directory path: {{dir}} %}
    {% capture filename %}{{page.category}}/{{file.name}}{% endcapture %}
    {% pw_include {{ filename }} %}
{% enddirectory %}