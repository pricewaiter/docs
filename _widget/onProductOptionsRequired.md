---
title: "onProductOptionsRequired()"
---

If you have used setProductOptionRequired to mark a product option as required, this callback is fired when the user clicks the Name Your Price button without supplying all required product options. If not specified, PriceWaiter will use window.alert() to prompt the user to provide all the missing options.

|:------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------|:---------|:----------------|
| Option                              | Description                                                                                                                                        | Values   | Default Value   |
| --------                            | -------------                                                                                                                                      | -------- | --------------- |
| onProductOptionsRequired (function) | A custom function you can specify to be executed when the user clicks the 'Name Your Price' button without selecting all required product options. | n/a      | none            |

The following example is purely conceptual and should not be replicated literally. Example uses a jQuery selector to call the API Method setProductOption when the user changes the size of the product.

<pre><code class="javascript">
var PriceWaiterOptions = {
    // Not shown: other required options
    onProductOptionsRequired: function(options) {
        alert("Please provide the following product option(s):" + options.join(','));
    }
}
</code></pre>
