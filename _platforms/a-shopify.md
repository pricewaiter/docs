---
layout: page
title: "Shopify"
nav_title: "Shopify <em>(App)</em>"
---

The official PriceWaiter app for Shopify will have you selling more in no time flat. The installation process is a breeze and can be done in less than 10 minutes.  A order will be created in your Shop after a successful deal is made and the buyer purchases on PriceWaiter.

<center>
    <a class="btn btn-primary btn-outline btn-lg" href="https://apps.shopify.com/pricewaiter-name-your-price" target="_blank">Visit Shopify App Store</a>
</center>

* * *

## Using the Shopify App

The PriceWaiter Shopify app installs `snippets/pricewaiter.liquid` in your theme which contains all the code to handle your variants, product images, prices, etc. You can control the location of our button by moving the following code to different locations in your `templates/product.liquid` file. We recommend putting this code directly above or below the `<form>` tag that holds your Add To Cart button.

{% highlight html %}
{% raw %}
<!-- Begin PriceWaiter Widget Button -->
{% include 'pricewaiter' %}
<!-- End PriceWaiter Widget Button -->
{% endraw %}
{% endhighlight %}

## Configuring the button

Our app provides a control panel in your Shopify Admin. From here you can control:

* Button Size
* Button Color, both hover and background
* Button Phrase: "Name your Price" or "Make an Offer"
* CSS Style for margin, padding and width of button
