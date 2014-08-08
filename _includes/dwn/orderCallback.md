Order Callback
==============


This guide outlines the process and technical details necessary to implement the order callback 
functionality between PriceWaiter and your webstore. The end result is the ability to seamlessly 
write completed orders to your shopping cart system after a completed purchase has occured on 
PriceWaiter. 


Order Notification API URL / Endpoint
-------------------------------------

* Login to your PriceWaiter dashboard
* Navigate to Widget > Api Documentation
* Scroll down to the bottom "New Order Notification API"
* Enter the URL on your store that will receive new order notifications
(New order notifications are sent as POST data to the entered URL)


Receive & Verify
----------------

* Receive the new order POST data
* POST the data back to the following URL w/ parameters below
(The POST data should be an exact copy of what we POST'd)


* The output of this POST API call is a 1 or 0 in the body
	* "1" indicates a valid order notification
	* "0" indicates an invalid order notification and it should not be processed


Process Order
-------------

* Process the order data as needed from step 1.

|           Field           | Example                     | Notes                                 |
|:-------------------------:|-----------------------------|---------------------------------------|
| pricewaiter_id            |                             | (string) PriceWaiter ID for the order |
| store_id                  |                             | (string) PriceWaiter ID for the store |
| api_key                   | 3kjsdf023lskjdf902lksjdf934 | (string) API Key assigned to the site |
| order_completed_timestamp | 2012-07-20T14:19:37-07:00   | (string) ISO 8601-formatted date/time |
| buyer_name                |                             | (string) Buyers full name             |
| buyer_email               |                             | (string) Buyers email address         |
| buyer_shipping_name       |                             | (string) Ship to full name            |
| buyer_shipping_address    |                             | (string) Ship to address              |
| buyer_shipping_city       |                             | (string) Ship to city                 |
| buyer_shipping_state      | "TN"                        | (string) 2-letter state abbreviation  |
| buyer_shipping_country    | "US"                        | (string) 2-letter country code        |
| buyer_shipping_zip        | "12345", "123456789",       | (string) US zip code                  |
| buyer_shipping_phone      | "012-345-6789", etc.        | (string) Buyers phone number          |
| product_sku               |                             | (string) Product sku / model number   |
| product_name				|							  | (string) Product Name				  |
| product_option_count		|							  | (int) total number of options         |
| product_option_name1,		| e.g. "Size", "Color"		  | (string) size, color, style, etc.     |
| product_option_name2,		| e.g. "Size", "Color"		  | Name of the Nth (1-based up to product_option_count)|
| product_option_name<N>	| e.g. "Size", "Color"		  | (string) Value for the Nth product option.|
| product_option_value1,	| e.g. "Large, "Green"		  | 									  |
| product_option_value2,	| e.g. "Large, "Green"		  |                                       |
| product_option_value<N>	| e.g. "Large, "Green"		  |										  |
| quantity					| 3							  | (int) Total quantity				  |
| unit_price				| 1234.99 					  | (decimal) Price per unit              |
| tax						| 4.99 						  | (decimal) Tax cost (not % rate)       |
| shipping					| 10						  | (decimal) Shipping cost               |
| total						| 1249.98 					  | (decimal) Order total                 |
|---------------------------|-----------------------------|---------------------------------------|