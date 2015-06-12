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

* Be sure to change <code>&lt;your api key here&gt;</code> to your PriceWaiter API Key, which you can see in your [account settings](https://manage.pricewaiter.com/stores/current/settings).

* Once you have saved and published the code, [contact our support team](https://www.pricewaiter.com/contact/) to turn on the volusion plugin. This final step will allow our button to appear on your store's website.
