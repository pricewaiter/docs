---
title: onLoad()
---

Since PriceWaiter is loaded asynchronously, it might not be available right when you start setting up your page. By adding a hook in here, you can update PriceWaiter when, for example, the user changes the product configuration.

|:------------------|:--------------------------------------------------------------------------------------------|:---------|:----------------|
| Option            | Description                                                                                 | Values   | Default Value   |
| --------          | -------------                                                                               | -------- | --------------- |
| onLoad (function) | A custom function to execute after the PriceWaiter Javascript API and button are available. | n/a      | none            |

<pre><code class="javascript">
var PriceWaiterOptions = {
    // Not shown: other required options
    onLoad: function(PriceWaiter, platformOnLoad) {
        // Your custom function(s) here
        $('select.size').change(function() {
            // Call the setProductOption API Method
            PriceWaiter.setProductOption('size', $(this).val());
        });

        // allow platform integration code to handle common cases
        return platformOnLoad();
    }
}
</code></pre>
