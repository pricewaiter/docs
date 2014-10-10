---
title: apiKey
---

PriceWaiter requires ALL widget users to have a custom API key for each store. The Name Your Price button and widget will not work without a valid key.


|-----------------+------------+-----------------+----------------|
| Option | Description | Values | Default Value |
|-----------------|-----------|---------------|---------------|
| apiKey (string) | Your API key, available at the top of this page  |  n/a      |  none    |
|-----------------+------------+-----------------+----------------|

{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: button config or other required options
    apiKey: 'DEMO'
}
{% endhighlight %}
