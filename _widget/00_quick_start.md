---
layout: default
title: "Quick Start Guide"
---

# Getting Started with PriceWaiter OnSite

We have ready-to-go plugins for many popular e-commerce platforms. See our [integrations list](https://www.pricewaiter.com/integrations/) to see if your platform is supported.

<div class="featured-platforms">
    <a href="/platforms/bigcommerce.html" class="btn btn-primary btn-outline btn-lg">Bigcommerce App</a>
    <a href="/platforms/magento.html" class="btn btn-primary btn-outline btn-lg">Magento Extension</a>
    <a href="/platforms/shopify.html" class="btn btn-primary btn-outline btn-lg">Shopify App</a>
    <a href="/platforms/woocommerce.html" class="btn btn-primary btn-outline btn-lg">Woocommerce App</a>
    <a href="/platforms/volusion.html" class="btn btn-primary btn-outline btn-lg">Volusion App</a>
</div>

---

## Getting started with a custom installation

A custom install is easy to perform with a few small pieces of HTML and Javascript.

### Step One

First put a PriceWaiter placeholder where you'd like the button to appear on the page:

<pre><code class="html">
&lt;span id="pricewaiter"&gt;&lt;/span&gt;
</code></pre>

### Step Two

Then include the script block to configure the button:

<pre><code class="javascript">
&lt;script&gt;
var PriceWaiterOptions = {

    // Configure the product the Name Your Price widget applies to.
    product: {
        sku: 'EXAMPLE-1234',
        name: 'Left-handed Smoke Shifter',
        image: 'http://lorempixel.com/output/business-q-c-640-480-9.jpg',
        price: '19.99'
    }

};
&lt;/script&gt;

</code></pre>

### Step Three

Then, include this code at the bottom of the page to load the button:

<pre><code class="javascript">

&lt;script src="https://widget.pricewaiter.com/script/[your api key here].js" async&gt;&lt;/script&gt;

</code></pre>
