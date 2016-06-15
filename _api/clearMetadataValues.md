---
title: "clearMetadataValues()"
nav_title: "clearMetadataValues()"
---

Remove all metadata values for this product or visitor set using [__setMetadata__](#_api/setMetadata.md) or [__setMetadataValues__](#_api/setMetadataValues.md)

<pre><code class="javascript">
// Example setting multiple metadata values
PriceWaiter.setMetadataValues({
    affiliate_id: '1234AOUFA',
    referer: 'pinterest'
});

// Unsets all metadata values
PriceWaiter.clearMetadataValues();
</code></pre>