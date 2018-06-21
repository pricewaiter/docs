---
layout: page
title: "Order Write API"
nav_title: "Order Write API <em>(custom)</em>"
---

The Order Callback allows PriceWaiter to insert orders into your Ecommerce Platform.
Our system will make a API call to your server with the details of a successful payment for an offer.

*This feature is not needed for Shopify or Bigcommerce as they directly integrate order creation in your store.*

Order Notification API URL / Endpoint
-------------------------------------

* [Sign in](https://retailer.pricewaiter.com/) to your PriceWaiter dashboard
* Navigate to Settings -> Platform Integration
* Enter the URL that will receive new order notifications in the `Order Notification Callback URL` field.

(For magento extension users, the Order Notification URL format is `https://_YOUR_DOMAIN_NAME_/index.php/pricewaiter/callback`)

Verify API Call
---------------

* After a purchase, PriceWaiter servers will POST data to your specified URL.
* POST the exact data back to `https://api.pricewaiter.com/order/verify`
* A response of "1" indicates a valid order notification
* A response "0" indicates an invalid order notification and it should not be processed

Data Fields
-----------

| Field                       | Example                       | Notes                                                        |
|:----------------------------|:------------------------------|:-------------------------------------------------------------|
| pricewaiter_id              | 10233323                      | (string) PriceWaiter ID for the order                        |
| order_completed_timestamp   | {{ site.time                  | date_to_xmlschema }} | (string) ISO 8601-formatted date/time |
| store_id                    | 42                            | (string) PriceWaiter ID for the store                        |
| store_name                  | Kwik-E-Mart                   | (string) Name of the store as entered                        |
| api_key                     | 3kjsdf023lskjdf902lksjdf934   | (string) API Key assigned to the site                        |
| transaction_id              | pk_a58conk8on4t3do9e98th3     | (string) Payment confirmation code                           |
| payment_method              | authorize_net                 | (string) Name of payment processor                           |
| buyer_first_name            | Ned                           | (string)                                                     |
| buyer_last_name             | Flanders                      | (string)                                                     |
| buyer_name                  | Ned Flanders                  | (string) Buyer's full name                                   |
| buyer_email                 | ned@example.com               | (string) Buyer's email address                               |
| buyer_shipping_name         |                               | (string) Ship to full name                                   |
| buyer_shipping_first_name   | Ned                           | (string)                                                     |
| buyer_shipping_last_name    | Flanders                      | (string)                                                     |
| buyer_shipping_address      |                               | (string) Ship to address                                     |
| buyer_shipping_address2     |                               | (string)                                                     |
| buyer_shipping_address3     |                               | (string)                                                     |
| buyer_shipping_city         |                               | (string) Ship to city                                        |
| buyer_shipping_state        | TN                            | (string) 2-letter state abbreviation                         |
| buyer_shipping_zip          | 12345                         | (string) US zip code                                         |
| buyer_shipping_phone        | 425-555-1212                  | (string) Buyer's phone number                                |
| buyer_shipping_country      | US                            | (string) 2-letter country code                               |
| buyer_billing_name          | Ned Flanders                  | (string) Bill to full name                                   |
| buyer_billing_first_name    | Ned                           | (string) Bill to first name                                  |
| buyer_billing_last_name     | Flanders                      | (string) Bill to last name                                   |
| buyer_billing_address       |                               | (string) Bill to address line 1                              |
| buyer_billing_address2      |                               | (string) Bill to address line 2                              |
| buyer_billing_address3      |                               | (string) Bill to address line 3                              |
| buyer_billing_city          |                               | (string) Bill to city                                        |
| buyer_billing_state         | TN                            | (string) 2-letter state abbreviation                         |
| buyer_billing_zip           | 12345, 123456789              | (string) Postal code                                         |
| buyer_billing_phone         | 012-345-6789, etc.            | (string) Buyer's phone number                                |
| buyer_billing_country       | US                            | (string) 2-letter country code                               |
| quantity                    | 3                             | (int) Total quantity                                         |
| unit_price                  | 1234.99                       | (decimal) Price per unit                                     |
| tax                         | 4.99                          | (decimal) Tax cost (not % rate)                              |
| shipping                    | 10                            | (decimal) Shipping cost                                      |
| total                       | 1249.98                       | (decimal) Order total                                        |
| shipping_method             | UPS Ground                    | (string) Name of shipping method                             |
| product_sku                 |                               | (string) Product sku / model number                          |
| product_name                |                               | (string) Product Name                                        |
| product_option_count        |                               | (int) total number of options                                |
| product_option_name1,       | e.g. "Size", "Color"          | (string) size, color, style, etc.                            |
| product_option_name2,       | e.g. "Size", "Color"          | Name of the Nth (1-based up to product_option_count)         |
| product_option_name<N>      | e.g. "Size", "Color"          | (string) Value for the Nth product option.                   |
| product_option_value1,      | e.g. "Large, "Green"          |                                                              |
| product_option_value2,      | e.g. "Large, "Green"          |                                                              |
| product_option_value<N>     | e.g. "Large, "Green"          |                                                              |
| metadata_<KEY>              |                               | (string) value of metadata properties                        |
| currency                    | e.g. "USD"                    | (string)Any valid ISO-4217 currency code                     |
| test                        | e.g. 0                        | (integer) 0 and 1 are the only valid values                  |
| --------------------------- | ----------------------------- | ---------------------------------------                      |
