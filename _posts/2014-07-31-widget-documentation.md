---
layout: page
title: "Widget Documentation"
category: doc
date: 2014-07-31 15:56:31
---

















<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">

### onProductOptionsRequired

If you have used setProductOptionRequired to mark a product option as required, this callback is fired when the user clicks the Name Your Price button without supplying all required product options. If not specified, PriceWaiter will use window.alert() to prompt the user to provide all the missing options.


|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
| onProductOptionsRequired (function) | A custom function you can specify to be executed when the user clicks the 'Name Your Price' button without selecting all required product options | n/a | none|


</div>

<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    onProductOptionsRequired: function(options) {
        alert("Please provide the following product option(s):" + options.join(','));
    }
}
{% endhighlight %}
</div>
</div>

<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">

### metadata

Metadata allows your store to pass arbitrary key/value data through the PriceWaiter system. Any data set here will be available when reviewing order data later, and will be passed to your Order Notification Callback URL.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
| metadata (object) | Any arbitrary key/value data may be set. | n/a | none |

</div>

<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    metadata: {
        affilate_id: 'company_1234',
        referer: 'pinterest',
        custom_val: 'G'
    }
}
{% endhighlight %}
</div>
</div>
