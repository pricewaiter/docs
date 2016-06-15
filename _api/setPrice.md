---
title: "setPrice(value) / getPrice()"
nav_title: "setPrice()"
---

The current price for the product (as configured on the page). See [__setRegularPrice__](#_api/setPriceRegular.md) for non-sale price. Can be an decimal, integer or string.

__Tip:__ This is price users will be comparing their offer to. Can be the sale price, otherwise use the product price.

<pre><code class="javascript">
// Example as a decimal
PriceWaiter.setPrice(99.99);

// Example as a formatted string
PriceWaiter.setPrice('$1,999.99');
</code></pre>