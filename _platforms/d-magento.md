---
layout: page
title: "Magento"
nav_title: "Magento <em>(Extension)</em>"
---

<img src="/images/magento-silver.png" class="right" width="150" height="150" />

The official PriceWaiter Magento extension allows you to quickly enable, configure, and integrate PriceWaiter into your
Magento store.

<center>
    <a class="btn btn-primary btn-outline btn-lg" href="http://www.magentocommerce.com/magento-connect/pricewaiterr-name-your-price-widget.html" target="_blank">Visit Magento Connect</a><br />
</center>

* * *

### Installing the Magento Extension

1. Copy the installation key from Magento Connect.
2. Log in to your Magento Admin panel.
3. Navigate to __"System"__ -> __"Magento Connect"__ -> __"Magento Connect Manager"__.
4. Login to the Magento Connect Manager.
5. Under the "Install New Extensions" heading, paste the key into the box and click __"Install"__, then click __"Proceed"__.
6. Log out of the Magento Connect Manager and your Magento Admin panel.
7. Log in to your Magento Admin Panel and navigate to __"System"__ -> __"Configuration"__.
8. In the left-hand navigation, under the __"SALES"__ heading, click __"PriceWaiter"__. 
9. Enable the extension by changing __"Enabled"__ to "Yes", and copy and pasting your API Key into the __"API Key"__ box, then click __"Save Config"__.

### Enabling Product Data Lookups for existing stores

When upgrading to the Magento Extension 2.0 version, there is a new feature called Product Data Lookup. This allows PriceWaiter to pull verified product price and inventory data from you store and powers Automatic Response and other premium features. To enable this, you will need to set the `Endpoint URL` and `Secret Key` settings. You can find these in the `Product Data Lookup` section of your store's [Advanced Settings](https://manage.pricewaiter.com/store/advanced).

Upgrading the Magento Extension should generate a `Secret Key` for you. The `Endpoint URL` will be `https://_YOUR_DOMAIN_NAME_/pricewaiter/productinfo`

### Configuring the Appearance of Magento Extension

From appearance of the PriceWaiter button is now controlled with [settings in your account](https://manage.pricewaiter.com/store/button).

### Controlling the visibility of the PriceWaiter button

The PriceWaiter Magento extension allows you restrict the visibility of the button:

* by Customer Group, in PriceWaiter's configuration in "System" -> "Configuration"
* per Product by toggling the "Disable PriceWaiter Widget?" attribute on a product
* per Category by toggling the "Enabled" option in the "PriceWaiter" tab on categories

A separate toggle is available for conversion tools, such as Exit Offers.


