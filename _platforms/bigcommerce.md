---
layout: page
title: "Bigcommerce App"
nav_title: "Bigcommerce <em>(App)</em>"
redirect_from:
    - /platforms/c-bigcommerce.html
---

PriceWaiter has official support for Bigcommerce stores. Our app will connect your store to our platform, guide you through the template installation, and allow successful orders to be written back to your store. Adding our <em>Name Your Price</em> button to your Bigcommerce store is easy!

<center>
    <a class="btn btn-primary btn-outline btn-lg" href="https://www.bigcommerce.com/apps/name-your-price-pricewaiter/" target="_blank">Find Pricewaiter in the Bigcommerce App Store</a>
</center>

Our Bigcommerce App can integrate with your product data to enable Premium PriceWaiter features: Inventory levels, automated responses based on retail price or product cost and your margins.

* * *

## Adding the Widget Code

1. Login to your Bigcommerce admin panel
2. At the top of the page, navigate to __"Design"__
3. In the gray __"Current Theme"__ box under __"Store Design"__, click __"Edit HTML/CSS"__
4. From the bottom, left hand frame select __"Snippets/ProductAddToCart.html"__
5. Insert this Javascript code where you want the PriceWaiter button to appear:

{% highlight html %}
<!-- Begin PriceWaiter Widget Button -->
<div>
    <span id="pricewaiter"></span>
</div>
<script src="https://widget.pricewaiter.com/script/<your api key here>.js" async></script>
<!-- End PriceWaiter Widget Button -->
{% endhighlight %}

<ol start="6">
    <li>Click <strong>"Save"</strong></li>
</ol>
