---
title: "setSKU(value) / getSKU()"
nav_title: "setSKU()"
---

Sets/Gets the SKU or Manufacturer's Part Number for the current product. Equivalent to the [__product.sku__](/widget/documentation.html#_widget/product.md) configuration key.

__Tip:__ The SKU will be POSTed back to your Order Notification Callback URL as the primary product identifier.

{% highlight javascript %}
PriceWaiter.setSKU('THESKU-123-AB');
{% endhighlight%}