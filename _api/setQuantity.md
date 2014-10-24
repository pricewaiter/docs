---
title: "setQuantity(int) / getQuantity()"
nav_title: "setQuantity()"
---

Sets/gets the default quantity. Equivalent to [__quantity__](/widget/documentation.html#_widget/quantity.md) configuration key.

__Tip:__ This method should be used whenever a user changes the quantity if you display a quantity option on your product detail page(s).

{% highlight javascript %}
// Set currency to US Dollar
PriceWaiter.setQuantity(1);
{% endhighlight%}