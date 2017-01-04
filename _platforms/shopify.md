---
layout: page
title: "Shopify"
nav_title: "Shopify <em>(App)</em>"
redirect_from:
    - /platforms/a-shopify.html
---

The official PriceWaiter app for Shopify will have you selling more in no time flat. The installation process is a breeze and can be done in less than 10 minutes.  A order will be created in your Shop after a successful deal is made and the buyer purchases on PriceWaiter.

<center>
    <a class="btn btn-primary btn-outline btn-lg" href="https://apps.shopify.com/pricewaiter-name-your-price" target="_blank">Find Pricewaiter in the Shopify App Store</a>
</center>

* * *

## Using the Shopify App

The PriceWaiter Shopify app installs `snippets/pricewaiter.liquid` in your theme which contains all the code to handle your variants, product images, prices, etc. You can control the location of our button by moving the following code to different locations in your Product Template file. You can usually find this as `templates/product.liquid` or `sections/product-template.liquid` or `snippets/product.liquid`. We recommend putting this code directly above or below the `<form>` tag that holds your Add To Cart button.

{% highlight html %}
{% raw %}
<!-- Begin PriceWaiter Widget Button -->
{% include 'pricewaiter' %}
<!-- End PriceWaiter Widget Button -->
{% endraw %}
{% endhighlight %}

## Toggling Features

You can turn on or off the button and Exit Offers feature with the following variables, set before including the `pricewaiter` snippet.

{% highlight html %}
{% raw %}
{% assign pw_enable_button = false %}
{% assign pw_enable_exit = true %}
{% endraw %}
{% endhighlight %}

You can also disable the button per-product or per-collection by using our menu, near the save button on Product or Collections:

<img src="/images/shopify-menu.jpg" alt="Example of Shopify Menu for Name your Price app." width="335" height="134">

## Configuring the button

Our app allows you to create different campaigns to compare different negotiation button call-to-actions. In each campaign, you can control:

* Button Size
* Button Color, both hover and background
* Button Phrase: "Name your Price", "Make an Offer", "Price Match" and many more.

## Full width button

Some Shopify themes have a wider call-to-action button for Add To Cart. To make the PriceWaiter negotiation button match that width, you can use the following CSS code:

{% highlight html %}
<style>
.pricewaiter--wrap iframe {
  width: 100% !important;
}
</style>

<div class="pricewaiter--wrap">
{% raw %}{% include 'pricewaiter' %}{% endraw %}
</div>
{% endhighlight %}

## Limit negotiation button to one Shopify collection

You can use the Shopify interface to toggle the PriceWaiter button on a per-product or per-collection basis. You may also find a need for testing out our button on a single collection before rolling out site-wide.  Use the following example code in your `product.liquid` file. You can find the ID of your collection by editing the collection in Shopify, and copying the number out of your browsers url field. __Replace `1234` with your collection id.__

{% highlight html %}
{% raw %}
{% if collection.id == 1234 %}
    {% include 'pricewaiter' %}
{% endif %}
{% endraw %}
{% endhighlight %}
