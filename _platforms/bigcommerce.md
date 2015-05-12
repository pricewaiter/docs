---
layout: page
title: "Bigcommerce App"
nav_title: "Bigcommerce <em>(App)</em>"
redirect_from:
    - /platforms/d-bigcommerce.html
---

PriceWaiter has official support for Bigcommerce stores. Our app will connect your store to our platform, guide you through the template installation, and allow successful orders to be written back to your store. Adding our <em>Name Your Price</em> button to your Bigcommerce store is easy!

<center>
    <a class="btn btn-primary btn-outline btn-lg" href="https://www.bigcommerce.com/apps/pricewaiter-name-your-price/" target="_blank">Visit Bigcommerce App Store</a>
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

## Enable only for specific brands

Sometimes retailers only wish to enable product negotiation for specific brands. Enter the following code __just before__ the main PriceWaiter script:

{% highlight html %}
<script type="text/javascript">
var PWBrandName = '%%GLOBAL_BrandName%%';
PWBrandName = PWBrandName.toLowerCase();
var PriceWaiterOptions = {
    enableButton: PWBrandName == 'nikon' || PWBrandName == 'canon camera'
};
</script>

{% endhighlight %}

## Enable only for specific prices

You may also limit the button to certain price ranges. Enter the following code __just before__ the main PriceWaiter script:

{% highlight html %}
<script type="text/javascript">
var PriceWaiterOptions = {
    enableButton: false,
    onLoad: function(PW, PlatformLoad) {
        var PWPrice = false;
        if (PW.platform.custom.parse_price) {
            PWPrice = PW.platform.custom.parse_price();
        }
        if (PWPrice && PWPrice > 150 && !PriceWaiter.isButtonEnabled()) {
            PriceWaiter.configure({enableButton: true});
        }
        PlatformLoad();
    }
};
</script>
{% endhighlight %}
