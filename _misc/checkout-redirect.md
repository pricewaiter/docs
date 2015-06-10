---
layout: page
title: Checkout Redirect
---

PriceWaiter can redirect buyers to a custom page on your website after a successful order purchase. You may use this page to trigger Javascript conversion tracking events. Under *Advanced Settings* in your PriceWaiter account, you can set the Checkout Redirect url and HTTP POST/GET method. We recommend POST unless you have specific technical need for the GET HTTP method.

We _do not_ recommend using checkout redirect to process order details into a fulfilment system. Our supported platforms do that automatically, and custom integrations can use the [Order Callback API](/misc/order-callback.html) securely process orders.

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
    '<?php echo json_encode($_POST['shipping_city']); ?>',
    '<?php echo json_encode($_POST['shipping_state']); ?>',
    '<?php echo json_encode($_POST['shipping_country']); ?>'
]);

_gaq.push(['_trackTrans']);
</script>
{% endhighlight %}

Generally the same variables from the [Order Callback API](/misc/order-callback.html) are available to Checkout Redirect.
