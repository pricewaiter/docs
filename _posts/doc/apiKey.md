<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">
### apiKey

PriceWaiter requires ALL widget users to have a custom API key for each store. The Name Your Price button and widget will not work without a valid key.


|-----------------+------------+-----------------+----------------|
| Option | Description | Values | Default Value |
|-----------------|-----------|---------------|---------------|
| apiKey (string) | Your API key, available at the top of this page  |  n/a      |  none    |
|-----------------+------------+-----------------+----------------|

</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: button config or other required options
    apiKey: 'DEMO'
}
{% endhighlight %}
</div>
</div>