<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">

### onLoad

Since PriceWaiter is loaded asynchronously, it might not be available right when you start setting up your page. By adding a hook in here, you can update PriceWaiter when, for example, the user changes the product configuration.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
|onLoad (function)| A custom function you can specify to be executed when the user clicks the 'Name Your Price' button without selecting all required product options. | n/a | none |

</div>

<div class="{{ site.doc_col_dark }}">
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
</div>
</div>
