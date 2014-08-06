<div class="{{ site.doc_row }}">
***
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