---
layout: page
title: "Widget Documentation"
category: doc
date: 2014-07-31 15:56:31
---

<div class="{{ site.doc_row }}">
	<div class="{{site.doc_col_light }}">
<h2>Bootstrapping</h2>
	<p>The Name Your Price button requires 3 things on your page.</p>
		<ol>
            <li>A <code>&lt;span&gt;</code> indicating where in the page to put the button</li>
            <li>A <code>&lt;script&gt;</code> tag containing a variable called <strong>PriceWaiterOptions</strong> that sets the initial PriceWaiter config </li>
            <li>A <code>&lt;script&gt;</code> tag that loads the Name Your Price widget.</li>
        </ol>
	</div>
</div>

<div class="{{ site.doc_row }}">
    <div class="{{ site.doc_col_light }}">
	<h2>1. The Button HTML</h2>
	First, copy the PriceWaiter HTML below and put it in your page(s) where you’d like the button to appear.
    </div>
	<div class="{{ site.doc_col_dark }}">
	<br/>
	{% highlight html %}
	<!-- The span below will be replaced with the Name Your Price button once the widget has loaded. -->
	<span id="pricewaiter"></span>
	{% endhighlight %}
    </div>
</div>

<div class="{{ site.doc_row }}">

	<div class="{{ site.doc_col_light }}">
    <h2 id="configuration-options">2. Configuration options</h2>

            <p>Second, somewhere on the page (preferably above the
            <code>&lt;script&gt;</code> tag you will add in step 3), add a
            <code>&lt;script&gt;</code> tag that looks like the code below.</p>
            <p><span class="red"><strong>BE SURE TO CUSTOMIZE THIS CODE</strong></span>	</p>
	
	</div>
	<div class="{{ site.doc_col_dark }}">
{% highlight html %}
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
    <h2>3. Loading the widget script</h2>
    <p>Last, include the code below at the bottom of the page, somewhere before the closing <code>&lt;/body&gt;</code> tag to load
    the button and NYP widget.</p>
  </div>
  <div class="{{ site.doc_col_light }}">
    {% highlight html %}
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