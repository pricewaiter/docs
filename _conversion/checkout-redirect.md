---
layout: page
title: Checkout Redirect
---

PriceWaiter can redirect buyers to a custom page on your website after a successful order purchase. You may use this page to trigger Javascript conversion tracking events. Under *Advanced Settings* in your PriceWaiter account, you can set the Checkout Redirect url and HTTP POST/GET method. We recommend POST unless you have specific technical need for the GET HTTP method.

We _do not_ recommend using checkout redirect to process order details into a fulfilment system. Our supported platforms do that automatically, and custom integrations can use the [Order Callback API](/misc/order-callback.html) to securely process orders.

## Google Analytics Ecommerce tracking

*This example uses PHP scripting. Other languages will need to adapt for different methods of accessing HTTP request variables.*
*This example may be different if using the newer Universal Analytics style.*

{% highlight html %}
<script>
_gaq.push(['_addItem',
    '<?php echo json_encode($_POST['pricewaiter_id']); ?>',
    '<?php echo json_encode($_POST['product_sku']); ?>',
    '<?php echo json_encode($_POST['product_name']); ?>',
    '',
    '<?php echo json_encode($_POST['unit_price']); ?>',
    '<?php echo json_encode($_POST['quantity']); ?>'
]);

_gaq.push(['_addTrans',
    '<?php echo json_encode($_POST['pricewaiter_id']); ?>',
    '<?php echo json_encode($_POST['store_name']); ?>',
    '<?php echo json_encode($_POST['total']); ?>',
    '<?php echo json_encode($_POST['tax']); ?>',
    '<?php echo json_encode($_POST['shipping']); ?>',
    '<?php echo json_encode($_POST['buyer_shipping_city']); ?>',
    '<?php echo json_encode($_POST['buyer_shipping_state']); ?>',
    '<?php echo json_encode($_POST['buyer_shipping_country']); ?>'
]);

_gaq.push(['_trackTrans']);
</script>
{% endhighlight %}

Generally the same variables from the [Order Callback API](/misc/order-callback.html) are available to Checkout Redirect.

## Testing your checkout redirect landing page

Here is an example `curl` request to POST data to your page. You can then inspect the page to ensure your Javascript tracking output is correct.

{% highlight javascript %}
curl 'https://www.example.com/thank_you_for_your_order' --data 'pricewaiter_id=P-1234&store_id=42&store_name=Example+Store&api_key=DEMO&transaction_id=ABCD-1234&payment_method=stripe&currency=USD&test=&order_completed_timestamp=2015-07-14T01%3A06%3A23%2B00%3A00&buyer_name=James+Dean&buyer_first_name=James&buyer_last_name=Dean&buyer_email=james%40example.com&buyer_shipping_first_name=James&buyer_shipping_last_name=Dean&buyer_shipping_address=1231+Main+St&buyer_shipping_address2=&buyer_shipping_city=Brooklyn&buyer_shipping_state=NY&buyer_shipping_zip=11205&buyer_shipping_country=US&buyer_shipping_phone=5555551212&quantity=1&unit_price=282.95&tax=0.00&shipping=0.00&shipping_method=Free+Standard+Ground+Shipping&total=282.95&product_sku=SKT-23&product_name=Skateboard&product_option_Color=Orange&product_option_key_0=Color&product_option_value_0=Orange&product_option_name0=Color&product_option_value0=Orange&product_option_count=1'
{% endhighlight %}
