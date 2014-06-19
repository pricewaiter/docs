<p class="notice-info">
    The following example is purely conceptual and should not be replicated literally. Example uses a jQuery selector to call the <a href="/docs/api">API Method</a> <strong>setProductOption</strong> when the user changes the size of the product.
</p>
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    onLoad: function() {
        // Your custom function(s) here
        $('select.size').change(function() {
            // Call the setProductOption API Method
            PriceWaiter.setProductOption('size', $(this).val());
        });
    }
}
{% endhighlight %}