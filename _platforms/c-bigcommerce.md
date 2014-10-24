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
3. In the gray __"Current Store Design"__ box, click __"Browse Template Files..."__
4. From the bottom, left had frame select __"Panels" > "ProductDetails.html"__
5. Directly after the first HTML `</script>` tag, insert the following code:

{% highlight html %}
<!-- Begin PriceWaiter Options -->
<script type="text/javascript">
//<! [CDATA[
var strPrice = "%%GLOBAL_ProductPrice%%";
var addToPage = !document.getElementById('no_pricewaiter');
var PriceWaiterOptions = {
    addToPage: addToPage, // toggle button display
    exit: addToPage, // toggle exit offers popup
    product: {
        sku: '%%GLOBAL_SKU%%',
        name: '%%GLOBAL_ProductName%%',
        price: parseFloat(strPrice.replace(/[$,]+/g, ""))
    },
    button: {
        size: 'lg' // or 'sm'
    },
    onLoad: function() {
        PriceWaiter.setProductImage(ThumbURLs[0]);
        PriceWaiter.originalOpen = PriceWaiter.open;
        PriceWaiter.open = function() {
            // required options
            var attributesValidated = $('#productDetailsAddToCartForm').validate().form();
            if(!attributesValidated) {
                return false;
            }

            // send all options to pricewaiter
            var requiredElements = $('#productDetailsAddToCartForm').validate().currentElements;
            for(var i=0; i < requiredElements.length; i++) {
                var radioSet = document.getElementsByName(requiredElements[i].name);
                for(var j=0; j < radioSet.length; j++) {
                    if(radioSet[j].checked) {
                        var parentRow = $(radioSet[j]).parents('div.productAttributeRow');
                        var name = parentRow.find('span.name').html().trim().replace(/[:]/, "");
                        var value = $(radioSet[j]).next().html();
                        PriceWaiter.setProductOption(name, value);
                        break;
                    }
                }
            }

            // grab quantity before opening PW lightbox
            var qty = $('#qty_');
            if(qty.length) {
                var basePrice = parseFloat($('em.ProductPrice').html().replace(/[$,]+/g, "").trim());
                PriceWaiter.setPrice(basePrice);
                var qtyNum = parseFloat(qty.val());
                PriceWaiter.setQuantity(qtyNum);
            }

            var sku = $('.ProductSKU .VariationProductSKU');
            if (sku.length) {
                var optionSku = sku.html().trim();
                if (optionSku) {
                    PriceWaiter.setSKU(optionSku);
                }
            }

            // actually open pricewaiter window
            PriceWaiter.originalOpen();

        }
    }
};
//]]>
</script>
<!-- End PriceWaiter Options -->
{% endhighlight %}

<ol start="6">
    <li>Near the end of the page, before the template tag <code>%%Panel.SimilarProductsByCustomerViews%%</code>,
insert the following code:</li>
</ol>

{% highlight html %}
<!-- Begin PriceWaiter Script Include -->
<script src="https://widget.pricewaiter.com/script/<your api key here>.js" async></script>
<!-- End PriceWaiter Script Include -->
{% endhighlight %}

<ol start="7">
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
