---
title: "setRegularPrice(value) / getRegularPrice()"
nav_title: "setRegularPrice()"
---

The non-sale price for the product. Can be an decimal, integer or string.

__Tip:__ This option is typically used when [__setPrice__](#_api/setPrice.md) is the sale price of a product. 

{% highlight javascript %}
// Example as a decimal
PriceWaiter.setRegularPrice(99.99);

// Example as a formatted string
PriceWaiter.setRegularPrice('$1,999.99');
{% endhighlight%}