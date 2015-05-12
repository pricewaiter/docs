---
title: Product
---

Set information about the product the user is viewing. If your product has options such as color, size, etc. You should look at the API Methods and learn how to tell the PriceWaiter widget that the user has selected specific product options.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
| sku (string) | The SKU or Manufacturer's Part Number (MPN) for the product. | n/a | none|
|name (string) | The product's name, e.g. Apple iPhone 64GB | n/a | none |
|description (string) | A brief description of the product.| n/a | none |
|price (decimal) | Your price for the product.| n/a | none |
|image (string) |The full URL (including http://) to an image for the product. Images will be scaled down to fit within an box approximately 200x200 pixels. Accepts .jpg, .png, or .gif image formats.| n/a | none|

{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: other required options
    product: {
        sku: 'Product SKU',
        name: 'Product Name',
        price: 99.99,
        image: 'http://yourdomain.com/images/path/filename.jpg'
    }
};
{% endhighlight %}
