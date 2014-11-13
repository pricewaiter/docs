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
<script type="text/javascript">
var addToPage = !document.getElementById('no_pricewaiter');
var PriceWaiterOptions = {
    addToPage: addToPage, // toggle button display
    exit: addToPage, // toggle exit offers popup
    product: {
        sku: '%%GLOBAL_SKU%%',
        name: '%%GLOBAL_ProductName%%',
        price: "%%GLOBAL_ProductPrice%%"
    },
    onButtonClick: 'pwBigcommerceValidate',
    onload: 'pwBigcommerceOnLoad'
};
</script>
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
