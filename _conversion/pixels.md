---
layout: page
title: Conversion Pixels
---

The PriceWaiter checkout system includes support for firing conversion events for Google Analytics and Facebook, as well as any additional custom scripts you need. In your PriceWaiter account head to `Settings` then `Conversion Tracking`.

## Google Analytics

Enter your Google Analytics UA identifier in our settings and we will fire conversion events when buyers complete purchases.  We use the GA [ecommerce tracking plugin](https://developers.google.com/analytics/devguides/collection/analyticsjs/ecommerce) so will see detailed information about each transaction in your analytics account.

## Facebook Pixel

Enter your Facebook Pixel ID in our settings and we can fire the following events:

- `InitiateCheckout` - occurs when the buyer loads the checkout page.
- `Purchase` - occurs once on successful payment. We include the `value` and `currency` fields.

See the [Facebook Pixel Implementation Guide](https://www.facebook.com/business/help/952192354843755) for more.

## Custom Conversion Scripts

You can paste any html script tags in this area. PriceWaiter will execute your custom script once at the time of purchase. Please include the `<script>` html tags around your custom conversion codes.
