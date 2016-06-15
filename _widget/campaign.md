---
title: Campaign
---

PriceWaiter Campaigns gives you to full control over the style, color and text of your buyer's experience. Your button configuration javascript can specify which campaign to use on each product page.

<pre><code class="javascript">
var PriceWaiterOptions = {
    // Not shown: other required options
    campaign: 'n-1fhkt0lmclu394w27pohyk6k7'
}
</code></pre>

You can specify multiple campaigns to allow our javascript to pick at random. This allows you to test the performance of different button campaigns against each other.

<pre><code class="javascript">
var PriceWaiterOptions = {
    // Not shown: other required options
    campaign: 'n-1fhkt0lmclu394w27pohyk6k7, p-1fhkt0lmclu394w27pohyk6k7, v-1fhkt0lmclu394w27pohyk6k7'
}
</code></pre>
