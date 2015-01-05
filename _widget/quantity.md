---
title: Quantity
---

Set the default quantity value and/or disable the quantity field.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
|quantity (integer)|Default value of the quantity field.| any integer | 1|
|hideQuantityField (bool)| Hide the quantity field. The default value is still submitted. | boolean | false |

{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    quantity: 2,
    hideQuantityField: true
}
{% endhighlight %}
