---
layout: page
title: "Widget Documentation"
category: doc
date: 2014-07-31 15:56:31
---

<div class="{{ site.doc_row }}">
<div class="{{ site.doc_col_light }}">

## Bootstrapping

The Name Your Price button requires 3 things on your page.

1. A <code>&lt;span&gt;</code> indicating where in the page to put the button
2. A <code>&lt;script&gt;</code> tag containing a variable called <strong>PriceWaiterOptions</strong> that sets the initial PriceWaiter config
3. A <code>&lt;script&gt;</code> tag that loads the Name Your Price widget.
</div>
</div>

<div class="{{ site.doc_row }}">
<div class="{{ site.doc_col_light }}">
## 1. The Button HTML
First, copy the PriceWaiter HTML below and put it in your page(s) where you’d like the button to appear.
</div>

<div class="{{ site.doc_col_dark }}">
{% highlight html %}
<!-- The span below will be replaced with the Name Your Price button once the widget has loaded. -->
<span id="pricewaiter"></span>
{% endhighlight %}
</div>
</div>

<div class="{{ site.doc_row }}">
<div class="{{ site.doc_col_light }}">
## 2. Configuration options

<p>Second, somewhere on the page (preferably above the
<code>&lt;script&gt;</code> tag you will add in step 3), add a
<code>&lt;script&gt;</code> tag that looks like the code below.</p>
<p><span class="red"><strong>BE SURE TO CUSTOMIZE THIS CODE</strong></span>	</p>

</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
<script type="text/javascript">
    (function() {
      var pw = document.createElement('script');
      pw.type = 'text/javascript';
      pw.src = "https://widget.pricewaiter.com/nyp/script/widget.js?1381796738";
      pw.async = true;

      var s = document.getElementsByTagName('script')[0];
      s.parentNode.insertBefore(pw, s);
    })();
</script>
{% endhighlight %}
</div>
</div>

<div class="{{ site.col_row }}">
<div class="{{ site.doc_col_light }}">
## 3. Loading the widget script

<p>Last, include the code below at the bottom of the page, somewhere before the closing <code>&lt;/body&gt;</code> tag to load the button and NYP widget.</p>

</div>
<div class="{{ site.doc_col_dark }}">
{% highlight javascript %}
<script type="text/javascript">
(function() {

    var pw = document.createElement('script');
    pw.type = 'text/javascript';
    pw.src = "https://widget-staging.pricewaiter.com/nyp/script/widget.js?1381796738";
    pw.async = true;

    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(pw, s);

})();
</script>
{% endhighlight %}
</div>
</div>
