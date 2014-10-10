---
layout: page
title: "Volusion Integration Guide"
---

Adding the Widget Code
----------------------

* a. Login to your Volusion admin panel
* b. At the top of the page, navigate to "Design" > "Templates"
* c. In the gray Advanced Editing box, click "Edit HTML"
* d. Before the end of the HTML </head> tag, insert the following code:

{% highlight javascript %}
<!-- Begin PriceWaiter Code -->
<script type="text/javascript">
var PriceWaiterOptions = {
 apiKey: 'YOUR API KEY', // REPLACE "YOUR API KEY" YOUR STORE'S PW API KEY
 product: {},
 button: {
 size: 'sm' // SEE ONLINE DOCUMENTATION FOR WIDGET OPTIONS TO CHANGE BUTTON DEFAULT STYLE
 },
 onLoad: function() {
 //onload product data
 PriceWaiter.setSKU($("span.product_code").html());
 PriceWaiter.setProduct($("span[itemprop=name]").html());
 var price = $("span[itemprop=price]").html();
 if(price) {
 price = price.replace(/[$,]+/g, "");
 } else {
 price = 0;
 }
 PriceWaiter.setPrice(parseFloat(price));
 var prodImg = document.getElementsByClassName('vCSS_img_product_photo');
 if(prodImg.length > 0) {
 PriceWaiter.setProductImage(prodImg[0].src);
 }
 //onload product options
 var selects = $('#vCSS_mainform select');
 for(var i=0; i < selects.length; i++) {
 var selectName = selects[i].name.replace(/SELECT.*_/g, "");
 var selectVal = selects[i].options[selects[i].selectedIndex].innerHTML;
 PriceWaiter.setProductOption(selectName, selectVal);
 }
 //tiny bit of formatting
 var br = $('<br />');
 br.insertBefore($('iframe'));
 $('iframe').css('padding-top', '7px');
 }
};
</script>
<!-- End PriceWaiter Code -->
{% endhighlight %}

Disabling the Widget (per product)
----------------------------------

For each product that you don't want the Name Your Price widget to appear on, follow these steps.

* a. Go go edit a single product "Inventory" > "Products"
* b. At the very bottom of the page, under Advanced Info, select the Product Descriptions tab.
* c. In the text box labeled "Product Description Above Pricing", place the following code:
