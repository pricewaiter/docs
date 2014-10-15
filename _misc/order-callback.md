---
layout: page
title: "Order Callback"
---

The Order Callback allows PriceWaiter to insert orders into your Ecommerce Platform.
Our system will make a API call to your server with the details of a successful payment for an offer.

*This feature is not needed for Magento or Shopify as they directly integrate order creation in your store.*

Order Notification API URL / Endpoint
-------------------------------------

* [Sign in](https://manage.pricewaiter.com/) to your PriceWaiter dashboard
* Navigate to Stores -> Advanced
* Edit the configuration options for "Order Notification API"
* Enter the URL that will receive new order notifications

Verify API Call
---------------

* After a purchase, PriceWaiter servers will POST data to your specified URL.
* POST the exact data back to `https://api.pricewaiter.com/order/verify`
* A response of "1" indicates a valid order notification
* A response "0" indicates an invalid order notification and it should not be processed

Data Fields
-----------

|           Field           | Example                     | Notes                                 |
|---------------------------|-----------------------------|---------------------------------------|
| pricewaiter_id            | 10233323                    | (string) PriceWaiter ID for the order |
| store_id                  | 42                          | (string) PriceWaiter ID for the store |
| api_key                   | 3kjsdf023lskjdf902lksjdf934 | (string) API Key assigned to the site |
| order_completed_timestamp | 2012-07-20T14:19:37-07:00   | (string) ISO 8601-formatted date/time |
| transaction_id            |                             | (string) Payment confirmation code    |
| payment_method            | authorize_net               | (string) Name of payment processor    |
| buyer_name                | Ned Flanders                | (string) Buyers full name             |
| buyer_first_name          | Ned                         | (string)                              |
| buyer_last_name           | Flanders                    | (string)                              |
| buyer_email               | ned@example.com             | (string) Buyers email address         |
| buyer_shipping_name       |                             | (string) Ship to full name            |
| buyer_shipping_first_name | Ned                         | (string)                              |
| buyer_shipping_last_name  | Flanders                    | (string)                              |
| buyer_shipping_address    |                             | (string) Ship to address              |
| buyer_shipping_address2   |                             | (string)                              |
| buyer_shipping_address3   |                             | (string)                              |
| buyer_shipping_city       |                             | (string) Ship to city                 |
| buyer_shipping_state      | TN                          | (string) 2-letter state abbreviation  |
| buyer_shipping_country    | US                          | (string) 2-letter country code        |
| buyer_shipping_zip        | 12345                       | (string) US zip code                  |
| buyer_shipping_phone      | 425-555-1212                | (string) Buyers phone number          |
| product_sku               |                             | (string) Product sku / model number   |
| product_name				|							  | (string) Product Name				  |
| product_option_count		|							  | (int) total number of options         |
| product_option_name1,		| e.g. "Size", "Color"		  | (string) size, color, style, etc.     |
| product_option_name2,		| e.g. "Size", "Color"		  | Name of the Nth (1-based up to product_option_count)|
| product_option_name<N>	| e.g. "Size", "Color"		  | (string) Value for the Nth product option.|
| product_option_value1,	| e.g. "Large, "Green"		  | 									  |
| product_option_value2,	| e.g. "Large, "Green"		  |                                       |
| product_option_value<N>	| e.g. "Large, "Green"		  |										  |
| metadata_<KEY>            |                             | (string) value of metadata properties |
| quantity					| 3							  | (int) Total quantity				  |
| unit_price				| 1234.99 					  | (decimal) Price per unit              |
| tax						| 4.99 						  | (decimal) Tax cost (not % rate)       |
| shipping					| 10						  | (decimal) Shipping cost               |
| total						| 1249.98 					  | (decimal) Order total                 |
| shipping_method           | USPS Ground                 | (string) Name of shipping method      |
|---------------------------|-----------------------------|---------------------------------------|
