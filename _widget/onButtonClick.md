---
title: "onButtonClick()"
---

Add a hook in here to do custom validation before showing the PriceWaiter UI to your customers. To prevent the PriceWaiter UI from being shown, return false from your custom `onButtonClick` handler.

<pre><code class="javascript">
var PriceWaiterOptions = {
    // Not shown: other required options
    onButtonClick: function(PriceWaiter, platformOnButtonClick) {
        // Your custom function(s) here
        if (!$('.i-agree').is(':checked')) {
            // NOTE: You must return an explicit false (not 0, null, or "") to prevent the PriceWaiter UI from being shown.
            return false;
        }

        // allow platform integration code to handle common cases
        return platformOnButtonClick();
    }
}
</code></pre>
