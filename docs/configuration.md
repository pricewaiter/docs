---
layout: default
title: Configuration
url: /docs/configuration/
---

# Configuration Options

The global __PriceWaiterOptions__ variable is used to initially configure the Name Your Price button. Available options and example code are described below. Keys containing dots (like __button.size__) should be provided as Javascript object literals.

{% for section in site.data.configuration.sections %}

<h2>{{ section.name }}</h2>
<span>{{ section.description }}</span>

<div class="tab-group">
  <ul class="tab-nav">
    <li><a href="#{{ section.name }}-options" class="active">Options</a></li>
    <li><a href="#{{ section.name }}-examples">Examples</a></li>
  </ul>

  <div class="tab-content" id="tab-{{ section.name }}-options">
  <table class="options">
    <thead>
      <tr>
        <th>Option</th>
        <th>Description</th>
        <th>Values</th>
        <th>Default Value</th>
      </tr>
    </thead>
    <tbody>
    {% for option in section.options %}
      <tr>
        <td>{% if option.required == true %}<span class="red">*</span>{% endif %}{{ option.name }} <i>({{ option.type }})</i></td>
        <td>{{ option.description }}</td>
        <td>{{ option.values }}</td>
        <td>{{ option.default }}</td>
      </tr>
  {% endfor %}
    </tbody>
  </table>
</div>

{% capture code_example %}examples/{{ section.name }}.md{% endcapture %}
{% include {{ code_example }} %}

{% endfor %}