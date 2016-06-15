---
title: Toggle Features
---

We recommend showing the PriceWaiter button on most of your products to see the best results.
You can implement custom coding to toggle the button off on specific criteria.
The button may be toggled independently of our conversion tools, such as Exit Intent Offers.

|-----------------+------------+-----------------+----------------|
| Option | Description | Values | Default Value |
|-----------------|-----------|---------------|---------------|
| enableButton (bool) | Display the PriceWaiter button on page load |  n/a      |  true    |
| enableConversionTools (bool) | Allow Exit Intent Offers and other tools |  n/a      |  true    |
|-----------------+------------+-----------------+----------------|

<pre><code class="javascript">
var PriceWaiterOptions = {
    enableButton: false, // hide button by default
    enableConversionTools: true // allow Exit Intent Offers and other conversion tools
}
</code></pre>
