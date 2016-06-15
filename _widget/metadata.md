---
title: "Metadata"
---

Metadata allows your store to pass arbitrary key/value data through the PriceWaiter system. Any data set here will be available when reviewing order data later, and will be passed to your Order Notification Callback URL.

|:------------------|:-----------------------------------------|:---------|:----------------|
| Option            | Description                              | Values   | Default Value   |
| --------          | -------------                            | -------- | --------------- |
| metadata (object) | Any arbitrary key/value data may be set. | n/a      | none            |

{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: other required options
    metadata: {
        affilate_id: 'company_1234',
        referer: 'pinterest',
        custom_val: 'G'
    }
}
{% endhighlight %}
