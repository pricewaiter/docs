<div class="{{ site.doc_row }}">
<div class="{{ site.doc_col_light }}">

### currency

Set the currency that will be used for the offer. The effect will be to show the currency symbol for your selected currency wherever a price is displayed, and when the buyer checks out, their transaction will be paid in this currency. The default value of this setting is configured in Advanced Settings.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
| currency (string) | Currency to be used for the offer. | Any valid ISO-4217 currency code | VEF|  

</div>

<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    currency: 'USD'
}
{% endhighlight %}
</div>
</div>
