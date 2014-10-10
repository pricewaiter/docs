---
layout: page
title: "BigCommerce Integration Guide"
---

Adding the Widget Code
----------------------

* a. Login to your BigCommerce admin panel
* b. At the top of the page, navigate to "Design"
* c. In the gray "Current Store Design" box, click "Browse Template Files..."
* d. From the bottom, left had frame select "Panels" > "ProductDetails.html"
* e. Directly after the first HTML </script> tag, insert the following code:

{% highlight javascript %}
<!-- Begin PriceWaiter Code -->
<script type="text/javascript"> //<! [CDATA[
var strPrice = "%%GLOBAL_ProductPrice%%";
var PriceWaiterOptions = {
 apiKey: 'YOUR API KEY', // REPLACE "YOUR API KEY" YOUR STORE'S PW API KEY
 product: {
 sku: '%%GLOBAL_SKU%%',
 name: '%%GLOBAL_ProductName%%',
 price: parseFloat(strPrice.replace(/[$,]+/g, "")),
 image: ThumbURLs[0]
 },
 button: {
 size: 'sm' // SEE ONLINE DOCUMENTATION FOR WIDGET OPTIONS TO CHANGE BUTTON DEFAULT STYLE
 },
 onLoad: function() {
 PriceWaiter.originalOpen = PriceWaiter.open;
 PriceWaiter.open = function() {
 //required options
 var attributesValidated = $('#productDetailsAddToCartForm').validate().form();
 if(!attributesValidated) {
 return false;
 }
 //send all options to pricewaiter
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
 //grab quantity before opening PW lightbox
 var qty = $('#qty_');
 if(qty.length) {
 var basePrice = parseFloat($('em.ProductPrice').html().replace(/[$,]+/g, "").trim());
 PriceWaiter.setPrice(basePrice);
 var qtyNum = parseFloat(qty.val());
 PriceWaiter.setQuantity(qtyNum);
 }
 // actually open pricewaiter window
 PriceWaiter.originalOpen();
 }
 }
};
//]]></script>
<!-- End PriceWaiter Code -->
{% endhighlight %}

* f. Near the end of the page, before the template tag %%Panel.SimilarProductsByCustomerViews%%,
insert the following code:

{% highlight javascript %}
<!-- Begin PriceWaiter Code -->
<script type="text/javascript">//<! [CDATA[
(function() {
 if(document.getElementById('no_pricewaiter')) {
 return false;
 } else {
 var pw = document.createElement('script');
 pw.type = 'text/javascript';
 pw.src = "https://widget.pricewaiter.com/nyp/script/widget.js";
 pw.async = true;
 var s = document.getElementsByTagName('script')[0];
 s.parentNode.insertBefore(pw, s);
 }
})();
//]]></script>
<!-- End PriceWaiter Code -->
{% endhighlight %}

* g. Click "Save"
* h. From the bottom-left hand frame select "Snippets" > "ProductAddToCart.html"
* i. Just after the template tag %%GLOBAL_AddToCartButtonOptimizerNoScriptTag%%, add the following
code:

{% highlight html %}
<!-- Begin PriceWaiter Widget Button -->
<div>
 <span id="pricewaiter"></span>
</div>
<!-- End PriceWaiter Widget Button -->
{% endhighlight %}
