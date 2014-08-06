<div class="{{ site.col_row }}">
***
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