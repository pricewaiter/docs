---
layout: default
title: Quick-start guide
url: /docs/bootstrapping/
---

# Bootstrapping

The Name Your Price button requires 3 things on your page.

1. A `<span>` indicating where in the page to put the button
2. A `<script>` tag containing a variable called PriceWaiterOptions that sets the initial PriceWaiter Configuration Options.
3. A `<script>` tag that loads the Name Your Price widget.

## 1. The button HTML

First, copy the PriceWaiter HTML below and put it in your page(s) where you'd like the button to appear.

~~~ html
<!-- The span below will be replaced with the Name Your Price button once the widget has loaded. -->
<span id="pricewaiter"></span>
~~~

## 2. Configuration options

Second, somewhere on the page (preferably above the <script> tag you will add in step 3), add a <script> tag that looks like the code below.
BE SURE TO CUSTOMIZE THIS CODE according to reference the Configuration Options section.

~~~ javascript
<script type="text/javascript">
    var PriceWaiterOptions = {
        apiKey: 'YOURAPIKEY',
        product: {
            sku: 'Product SKU',
            name: 'Product Name',
            price: 199,
            image: '\/images\/demo\/iphone.jpg'
        },
        onLoad: function() {
            alert('PriceWaiter is loaded');
        }
    };
</script>
~~~

## 3. Loading the widget script

Last, include the code below at the bottom of the page, somewhere before the closing </body> tag to load the button and NYP widget.

~~~ javascript
<script type="text/javascript">
(function() {

    var pw = document.createElement('script');
    pw.type = 'text/javascript';
    pw.src = "https://widget.pricewaiter.com/nyp/script/widget.js?1381796738";
    pw.async = true;

    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(pw, s);

})();
</script>
~~~