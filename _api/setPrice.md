---
title: "setPrice(value) / getPrice()"
nav_title: "setPrice()"
---

The current price for the product (as configured on the page). Can be an decimal, integer or string.

{% highlight javascript %}
// Example as a decimal
PriceWaiter.setPrice(99.99);

// Example as a formatted string
PriceWaiter.setPrice('$1,999.99');
{% endhighlight%}