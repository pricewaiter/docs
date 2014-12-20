---
layout: page
title: "BigCommerce Integration Guide"
nav_title: "BigCommerce <em>(Guide)</em>"
---

PriceWaiter offical BigCommerce app is in the final development stages, but fear not, we have many retailers who have implemented already without the official app.

* * *

## Adding the Widget Code

1. Login to your BigCommerce admin panel
2. At the top of the page, navigate to __"Design"__
3. In the gray __"Current Theme"__ box under __"Store Design"__, click __"Edit HTML/CSS"__
4. From the bottom, left hand frame select __"Panels" > "ProductDetails.html"__
5. Directly after the HTML `</script>` tags, insert the following code:

{% highlight html %}
<!-- Begin PriceWaiter Options and Script -->
<script src="https://widget.pricewaiter.com/script/<your api key here>.js" async></script>
<!-- End PriceWaiter Options and Script -->
{% endhighlight %}

<ol start="6">
    <li>Click <strong>"Save"</strong></li>
    <li>From the bottom-left hand frame select <strong>"Snippets" > "ProductAddToCart.html"</strong></li>
    <li>Just after the template tag <code>%%GLOBAL_AddToCartButtonOptimizerNoScriptTag%%</code>, add the following
    code:</li>
</ol>

{% highlight html %}
<!-- Begin PriceWaiter Widget Button -->
<div>
    <span id="pricewaiter"></span>
</div>
<!-- End PriceWaiter Widget Button -->
{% endhighlight %}

## Disable PriceWaiter on specific products

For each product that you don't want the PriceWaiter button to appear on, follow these steps.

1. Go go edit a single product "Products" > "View Products"
2. In the product description box, click the "HTML" button to edit the HTML Source of the description.
3. Place one of the following codes anywhere in the box:
4. Click "Update" and then save your product.

#### No PriceWaiter button
{% highlight html %}
<!-- Begin Disable PriceWaiter Widget On This Page -->
<span id="no_pricewaiter_button" style="display: none;">&nbsp;</span>
<!-- End Disable PriceWaiter Widget On This Page -->
{% endhighlight %}

#### No PriceWaiter conversion tools (Exit Intent Offers, etc)
{% highlight html %}
<!-- Begin Disable PriceWaiter Widget On This Page -->
<span id="no_pricewaiter_conversion_tools" style="display: none;">&nbsp;</span>
<!-- End Disable PriceWaiter Widget On This Page -->
{% endhighlight %}

#### No PriceWaiter features at all (button and conversion tools off)
{% highlight html %}
<!-- Begin Disable PriceWaiter Widget On This Page -->
<span id="no_pricewaiter" style="display: none;">&nbsp;</span>
<!-- End Disable PriceWaiter Widget On This Page -->
{% endhighlight %}

