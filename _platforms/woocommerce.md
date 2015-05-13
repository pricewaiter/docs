---
layout: page
title: "WooCommerce"
nav_title: "WooCommerce <em>(Plugin)</em>"
---

The official PriceWaiter plugin for WooCommerce will have you selling more in no time flat. The installation process is a breeze and can be done in less than 10 minutes.

<center>
    <a class="btn btn-primary btn-outline btn-lg" href="https://wordpress.org/plugins/woocommerce-pricewaiter/" target="_blank">Find Pricewaiter in the Wordpress Plugin Directory</a>
</center>



* * *

## Getting Started

Install and activate the PriceWaiter Plugin.<br>
__If you ALREADY have a PriceWaiter account__, skip to [configuration with existing PriceWaiter account](#woo-has-account).

<a id="woo-no-account"></a>

## New Configuration

1. Go to your Wordpress Admin
2. Go to WooCommerce > Settings > Integrations > PriceWaiter
3. Follow the onscreen instructions
    * Create or set an API user
    * Click the FREE or Premium button _(these special links will help automagically configure some of your settings)_
    * Complete the initial PriceWaiter account creation page
    * Copy your stores API key from PriceWaiter into your API key setting and click save

<a id="woo-has-account"></a>

## Configuration with an Existing PriceWaiter Account

1. Contact a PriceWaiter sales rep and ask them to set your store platform to __WooCommerce__
2. Enable WooCommerce's REST API
    * Go to Wordpress Admin > WooCommerce > Settings > General
    * Check the "Enable REST API" box
    * Click "Save"
3. REST API Credentials
    * Either create a new WP Administrator or edit an existing administrator
    * Enable the REST API with `read/write` mode for that user
    * You will need to copy the `Consumer Key` and `Consumer Secret`
    * Login to your PriceWaiter account, go to Store > Advanced > WooCommerce and save the api keys
4. Complete the setup for items under "Settings Reference" (below)

## Settings Reference

The following settings can be found in your [PriceWaiter account](https://manage.pricewaiter.com) under Store > Advanced<br>
_(These will be configured automatically if you signed up within the PriceWaiter WooCommerce plugin.)_

__Checkout Redirect__:

* check "Enable checkout redirect"
* url: `https://YOURDOMAIN.COM/checkout/order-received?utm_nooverride=1`
* method: `POST`
* click "Save"

__Order Notification API__:

* check "Enable order notifications"
* url: `https://YOURDOMAIN.COM/pricewaiter-api/ipn`
* click "Save"

* * *

## Configuration Screen Shots

#### WooCommerce API Access

<img src="/images/woo/configure-step-1.png" alt="Grant API access" width="766" height="504">

#### Select a PriceWaiter Package

<img src="/images/woo/configure-step-2.png" alt="Select PriceWaiter Package" width="775" height="482">

#### Create Your PriceWaiter Account

You need the API key from your PriceWaiter account for your WooCommerce settings.

<img src="/images/woo/configure-step-3.png" alt="Grant API access" width="656" height="858">

#### Save your API Key and Configure Additional Settings

<img src="/images/woo/configure-step-4.png" alt="Save your API Key and Configure Additional Settings" width="872" height="588">

#### Per Product PriceWaiter Options

<img src="/images/woo/product-fields.png" alt="Per Product PriceWaiter Options" width="1007" height="489">
