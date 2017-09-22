---
layout: page
title: "Volusion Integration Guide"
nav_title: "Volusion <em>(Guide)</em>"
redirect_from:
    - /platforms/b-volusion.html
---

* * *



## Adding the Widget Code

1. Login to your Volusion store's admin panel
2. At the top of the page, navigate to __"Design"__ -> __"Template"__
3. On the __"Active Template"__ tab, click __"Edit HTML"__ in the __"Advanced Editing"__ box.
4. Now find the `</body>` tag. Create a new line above it, and copy and paste the following code:

{% highlight html %}
<!-- Begin PriceWaiter code -->
<script src="https://widget.pricewaiter.com/script/<your api key here>.js" async></script>
<!-- End PriceWaiter code -->
{% endhighlight %}

* Be sure to change <code>&lt;your api key here&gt;</code> to your PriceWaiter API Key, which you can see in [Settings > Platform Integration](https://retailer.pricewaiter.com/).

* Once you have saved and published the code, [contact our support team](https://www.pricewaiter.com/contact/) to turn on the volusion plugin. This final step will allow our button to appear on your store's website.



## Disable PriceWaiter on specific products

For each product that you don't want the PriceWaiter button to appear on, follow these steps:

Upload a product description that contains these html tags to toggle the button off.

#### No PriceWaiter button
{% highlight html %}
<!-- Begin Disable PriceWaiter Widget On This Page -->
<span id="no_pricewaiter_button" style="display: none;">&nbsp;</span>
<!-- End Disable PriceWaiter Widget On This Page -->
{% endhighlight %}


## Volusion Integration from PriceWaiter

Sign in to your PriceWaiter account

<img src="/images/volusion/sign_up_screenshot.png" alt="Sign Up PriceWaiter Screen" width="500">

Use the top menu to go to the Settings tab,
click Platform Integration in the sidebar

<img src="/images/volusion/platform_integration_page.png" alt="Platform Integration PriceWaiter Screen" width="750">

We will be filling out these 5 fields. Start by typing your username into the top field, and your store url in the "Hostname" input.

<img src="/images/volusion/username_and_hostname.png" alt="Volsuion Integration PriceWaiter Screen with User and Hostname" width="750">

Now in a separate tab open up and log into your volusion store. In the top menu hover over settings, and click on the shipping tab. Scroll about halfway down the page and under Advanced Settings click
"View All Shipping Methods"

<img src="/images/volusion/shipping_options.png" alt="Volusion Shipping Advanced Settings" width="750">

You should now see a list of all the available shipping methods for your store. At the top of the page under the Shipping Methods bar there is also a "Shipping Sttings" button which you can use to edit your shipping methods or add a new shipping method.

<img src="/images/volusion/shipping_methods.png" width="750">

Once this is set up to your liking, select the shipping method you would like to use and type the appropriate code into "Shipping Method ID" on the PriceWaiter Volusion integration page

<img src="/images/volusion/pricewaiter_with_shippingID.png" width="750">

In similar fashion, we will select the Payment tab, also under the Volusion store Settings menu. On the right hand side of the "Payment" header bar is a "View List" button.

<img src="/images/volusion/payment_header_bar.png" width="750">

Here you see a list of all payment methods, similar to the shipping method list. On the right hand side of the header you can add new payment methods. Select the appropriate payment method ID and type it into the field on your PriceWaiter Volusion Integration page.

<img src="/images/volusion/volusion_integration_payment_method_id.png" width="750">

For your Encrypted Password go to Inventory in the top menu bar, click the Import/Export tab. From here select Volusion API. Under "Generic" click "Volusion API Integration Help"

<img src="/images/volusion/volusion_import_export.png" width="750">

From here, select the "URL with Query String and General Information for Importing and Exporting" text box. At the bottom you will see EncryptedPassword in the url. Copy the string between "EncryptedPassword=" and "&API_Name" and paste it into the encrypted password input on your PriceWaiter Volusion Integration Page.

<img src="/images/volusion/volusion_integration_final.png" width="750">

And Voila! Save and your Volusion store is succesful connected to your PriceWaiter account!
