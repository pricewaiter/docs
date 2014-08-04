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

