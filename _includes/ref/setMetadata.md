<div class="{{ site.doc_row }}">
<div class="{{ site.doc_col_light }}">
#### setMetadata(key, value) / getMetadata(key)

Set or retrieve metadata about this product or visitor. Tip: use a url-friendly key name, as this will be POSTed back to your Order Notification Callback URL.
</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
PriceWaiter.setMetadata('affiliate_code', 'nike_air2');
{% endhighlight%}
</div>
</div>