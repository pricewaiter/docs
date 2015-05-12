---
layout: default
title: "PriceWaiter Developer Documentation"
description: "Quick Start Guide"
---

# Getting Started with PriceWaiter

We have ready-to-go plugins for many popular e-commerce platforms. See our [integrations list](https://www.pricewaiter.com/integrations/) to see if your platform is supported.

<center>
    <a href="/platforms/bigcommerce.html" class="btn btn-primary btn-outline btn-lg">Bigcommerce App</a>
    <a href="/platforms/magento.html" class="btn btn-primary btn-outline btn-lg">Magento Extension</a>
    <a href="/platforms/prestashop.html" class="btn btn-primary btn-outline btn-lg">Prestashop Module</a>
    <a href="/platforms/shopify.html" class="btn btn-primary btn-outline btn-lg">Shopify App</a>
    <a href="/platforms/woocommerce.html" class="btn btn-primary btn-outline btn-lg">Woocommerce App</a>
</center>

* * *

## Getting started with a custom installation

A custom install is easy to perform with a few small pieces of HTML and Javascript.


### Step One

First put a PriceWaiter placeholder where you'd like the button to appear on the page:

{% highlight html %}
<span id="pricewaiter"></span>
{% endhighlight %}

### Step Two

Then include the script block to configure the button:

{% highlight html %}
<script>
var PriceWaiterOptions = {

    // Configure the product the Name Your Price widget applies to.
    product: {
        sku: 'EXAMPLE-1234',
        name: 'Left-handed Smoke Shifter',
        image: 'http://lorempixel.com/output/business-q-c-640-480-9.jpg',
        price: '19.99'
    }

};
</script>
{% endhighlight %}

### Step Three

Then, include this code at the bottom of the page to load the button:

{% highlight html %}
<script src="https://widget.pricewaiter.com/script/<your api key here>.js" async></script>
{% endhighlight %}
