---
title: "clearMetadata(key)"
nav_title: "clearMetadata()"
---

Unsets a metadata option set using [__setMetadata__](#_api/setMetadata.md)

`IS setMetadataValues an API option???`

{% highlight javascript %}
// Example setting metadata
PriceWaiter.setMetadataValues({
    affiliate_id: '1234AOUFA',
    referer: 'pinterest'
});

// Unsets a metadata key
PriceWaiter.clearMetadata('referer');
{% endhighlight%}
