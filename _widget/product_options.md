---
title: Product Options
---

Set selected product options (size, color, etc) on page load. You may also set on-the-fly with the JavaScript API call `setProductOption`.

{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: other required options
    product: {
        options: {
            color: 'blue',
            size: 'medium'
        }
    }
};
{% endhighlight %}
