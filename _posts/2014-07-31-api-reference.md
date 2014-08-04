---
layout: page
title: "API Reference"
category: ref
date: 2014-07-31 16:00:09
---

<div class="{{ site.doc_row }}">
<div class="{{ site.doc_col_light }}">
Once the PriceWaiter widget is available, you can configure it dynamically using the global PriceWaiter object. To check if it is available, just wrap your code in if (window.PriceWaiter), e.g.:
</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
if (window.PriceWaiter) {
    alert('PriceWaiter is available!');
} else {
    alert('PriceWaiter is not available!');
}
{% endhighlight %}
</div>
</div>

<div class="{{ site.doc_row }}">
The global PriceWaiter object has the following available methods:

***


#### getEmail() / setEmail(value)

Gets/sets the current user's email. Equivalent to the __user.email__ configuration key.

***

#### getUserName() / setUserName(value)

Gets/sets current user's full name. Equivalent to the __user.name__ configuration key.

***

#### getPostalCode() / setPostalCode(value)

Gets/sets the zip / postal code. Equivalent to the __postal_code__ configuration key.

***

#### getProduct() / setProduct(value)

Gets/sets the name of the current product. Equivalent to __product.name__ configuration key.

***

#### getProductDescription() / setProductDescription(value)

Equivalent to __product.description__ configuration key.

***

#### getProductImage() / setProductImage(value)

The full URL of the product image. Equivalent to __product.image__ configuration key.

***

#### getPrice() / setPrice(value)

Your current price for the product (as configured on the page).

***

#### getSKU() / setSKU(value)

Gets/sets the SKU or Manufacturer's Part Number for the current product. Equivalent to the __product.sku__ configuration key.

***

#### getQuantity() / setQuantity(value)

Gets/sets the default quantity. Equivalent to __quantity__ configuration key.

***

#### getCurrency() / setCurrency(value)

Gets/sets the currency to be used for the offer. Equivalent to __currency__ configuration key. Must be a valid ISO-4217 currency code.
</div>


<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">
#### setProductOption(name, value) / getProductOption(name)
Gets/sets an arbitrary option for the current product, e.g.:
</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
PriceWaiter.setProductOption('size', 'Large');
{% endhighlight %}
</div>
</div>


<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">
#### setProductOptions(options)
Sets one or more product options at once (options is a hash), e.g.:
</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
PriceWaiter.setProductOptions({
    size: 'Large',
    color: 'Blue'
});
{% endhighlight %}
</div>
</div>

<div class="{{ site.doc_row }}">
#### getProductOptions()

Returns an array of currently set product options.

***

#### clearProductOption(name)

Unsets a product option set using __setProductOption__

***

#### clearProductOptions()

Unsets all product options set using __setProductOption__ or __setProductOptions__.

***

#### clearRequiredProductOptions()

Marks all product options as not required.

***

#### getMissingProductOptions()

Returns an array of product options marked as required using __setProductOptionRequired__, but which currently don't have values set for them.

***

#### getRequiredProductOptions()

Returns an array of product options marked as required using __setProductOptionRequired__.

***

#### isProductOptionRequired(option)

Returns whether the given option has been marked as required using __setProductOptionRequired__.

</div>

<div class="{{ site.doc_row }}">

***

#### setProductOptionRequired(option, [required = true])

Mark one or more product options as "required". If an option is required the PriceWaiter UI will not be shown unless a value has been provided for that option via __setProductOption__.

If the user clicks the __Name Your Price__ button without configuring all required product options, the __onProductOptionsRequired__ callback is fired, with an array of missing options passed as the first argument. If the callback has not been configured, the widget uses __window.alert()__ to ask the user to provide all required options.

To mark multiple different options as required, pass an Array as the __option__ argument.

To mark options as no longer required, pass false as the __required__ argument

NOTE: A product option will fail the "requirement" test if:

* Its value was never set or
* Its value is equal to one of the following:
	* undefined
	* null
	* '' (empty string)
	* ' ' (empty string with whitespace)

</div>

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

<div class="{{ site.doc_row }}">
***
<div class="{{ site.doc_col_light }}">
#### clearMetadata(key)

Bulk set metadata about this product or visitor.
</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
	PriceWaiter.setMetadataValues({
    affiliate_id: '1234AOUFA',
    referer: 'pinterest'
});
{% endhighlight%}
</div>
</div>


<div class="{{ site.doc_row }}">
#### clearMetadataValues()

Remove all metadata values for this product or visitor.


***

#### clearMetadata(key)

Remove a metadata value for this product or visitor.

</div>

