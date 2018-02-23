---
layout: page
title: "Magento"
nav_title: "Magento <em>(Extension)</em>"
redirect_from:
    - /platforms/d-magento.html
---

The official PriceWaiter Magento extension allows you to quickly enable, configure, and integrate PriceWaiter into your Magento store.

<center>
    <a class="btn btn-primary btn-outline btn-lg" href="https://marketplace.magento.com/pricewaiter-nypwidget.html" target="_blank">Find Pricewaiter in Magento Marketplace</a><br />
</center>

* * *

### Installing the PriceWaiter Magento Extension

1. Purchase our free [Make an Offer extension](https://marketplace.magento.com/pricewaiter-nypwidget.html) in the Marketplace
1. [Find your extension key](https://marketplace.magento.com/customer/accessKeys/) for the latest version of the `pricewaiter/nypwidget` extention.

2. Log in to your Magento Admin panel.
3. Navigate to __"System"__ -> __"Magento Connect"__ -> __"Magento Connect Manager"__.
4. Login to the Magento Connect Manager.
5. Under the "Install New Extensions" heading, paste the key into the box and click __"Install"__, then click __"Proceed"__.
6. Log out of the Magento Connect Manager and your Magento Admin panel.
7. Log in to your Magento Admin Panel and navigate to __"System"__ -> __"Configuration"__.
8. In the left-hand navigation, under the __"SALES"__ heading, click __"PriceWaiter"__.
9. Enable the extension by changing __"Enabled"__ to "Yes", and copy and pasting your API Key into the __"API Key"__ box, then click __"Save Config"__.

If you prefer to download a tar file of our extension directly, visit our [github releases page](https://github.com/pricewaiter/magento/releases)

### Enabling Product Data Lookups for existing stores

When upgrading to the Magento Extension 2.0 version, there is a new feature called Product Data Lookup. This allows PriceWaiter to pull verified product price and inventory data from you store and powers Automatic Response and other premium features. To enable this, you will need to set the `Endpoint URL` and `Secret Key` settings. You can find these in the `Product Data API` section of your store's [Settings > Platform Integration](https://retailer.pricewaiter.com/).

Upgrading the Magento Extension should generate a `Secret Key` for you. The `Endpoint URL` will be `https://_YOUR_DOMAIN_NAME_/pricewaiter/productinfo`

### Segmenting traffic and appearance

PriceWaiter Campaigns allow you to control the look and feel of our call-to-action on your product pages. You can change the button appearance and decide when each campaign type is eligible for display. See the PriceWaiter Campaign section of [your store dashboard](https://retailer.pricewaiter.com/) to get started.
