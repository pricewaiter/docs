<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">
### Step Two

Then include <script> block to configure the button:

</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
<script type="text/javascript">
var PriceWaiterOptions = {

    // Configure the product the Name Your Price widget applies to.
    product: {
        sku: 'Your product SKU here',
        name: 'Your product name here',
    },

    onload: function(PriceWaiter) {
        // This function is called automatically once PriceWaiter is
        // loaded and ready.
    }

};
</script>
<span id="pricewaiter"></span>
{% endhighlight %}
</div>
</div>