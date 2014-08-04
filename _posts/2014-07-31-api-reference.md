---
layout: page
title: "API Reference"
category: ref
date: 2014-07-31 16:00:09
---


## Configuration Options

The global __PriceWaiterOptions__ variable is used to initially configure the Name Your Price button. Available options and example code are described below. Keys containing dots (like button.size) should be provided as Javascript object literals.


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

<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">
### button
 
Control the look and feel of the Name Your Price button on your website.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
|type(string) |Controls the style and text of button injected into the page.|'button_nyp', 'button_mo', 'text_nyp', 'text_mo'| button_nyp|
|color(string) |The background color used for the 'button' type or the text color used for the 'text' type.| hexadecimal code | #97C0E6|
|hoverColor(string) | The hover state background color for 'button' or the text color hover state for the 'text' type. | hexadecimal code | #6D9FD6|
|buttonTextColor(string) | The color used for the text and icon of the 'button' type. The currently accepted values are 'white' or 'black'.| hexadecimal code| (Best value based on color) |
|buttonTextHoverColor(string)| The color used for the text and icon of the 'button' type in its hover state. The currently accepted values are 'white' or 'black'.| hexadecimal code | (Best value based on hoverColor)|
|size(string)| The size and dimensions of the button depending on which 'type' you are using.| 'sm' or 'lg' | lg|

</div>

<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    button: {
        type: 'button_nyp',
        size: 'lg',
        color: '#666',
        hoverColor: '#333'
    }
};
{% endhighlight %}
</div>
</div>

<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">
### product

Set information about the product the user is viewing. If your product has options such as color, size, etc. You should look at the API Methods and learn how to tell the PriceWaiter widget that the user has selected specific product options.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
| sku (string) | The SKU or Manufacturer's Part Number (MPN) for the product. | n/a | none|
|name (string) | The product's name, e.g. Apple iPhone 64GB | n/a | none |
|description (string) | A brief description of the product.| n/a | none |
|price (decimal) | Your price for the product.| n/a | none |
|image (string)	|The full URL (including http://) to an image for the product. Images will be scaled down to fit within an box approximately 200x200 pixels. Accepts .jpg, .png, or .gif image formats.| n/a | none|


</div>

<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    product: {
        sku: 'Product SKU',
        name: 'Product Name',
        description: 'Short description of the product',
        price: 99.99,
        image: 'http:\/\/yourdomain.com/images\/path\/filename.jpg'
    }
};
{% endhighlight %}
</div>
</div>

<div class="{{ site.doc_row }}">
***
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

<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">

### quantity

Set the default quantity value and/or disable the quantity field.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
|quantity (integer)|Default value of the quantity field.| any integer | 1|
|hide_quantity_field (bool)| Hide the quantity field. The default value is still submitted. | boolean | false |

</div>

<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    quantity: 2,
    hide_quantity_field: true
}
{% endhighlight %}
</div>
</div>

<div class="{{ site.doc_row }}">
***
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