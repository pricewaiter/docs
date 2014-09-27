<div class="{{ site.doc_row }}">
<div class="{{ site.doc_col_light }}">
### user

Optionally, you can pass information about the current user if they are logged into your system. This will pre-populate their name and email address accordingly in the widget.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
|name (string)| The current user's full name. | n/a | none|
|email (string)| The current user's email address. | n/a | none|

</div>

<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    user:  {
        name: 'Joe Brown',
        email: 'joe@domainname.com'
    }
}
{% endhighlight %}
</div>
</div>
