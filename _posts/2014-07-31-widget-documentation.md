---
layout: page
title: "Widget Documentation"
category: doc
date: 2014-07-31 15:56:31
---

<div class="{{ site.doc_row }}">
    <div class="{{ site.doc_col_light }}">

        Gotta work on my code escaping skills before I copy paste all the docs
        Here is some solid code that makes price waiter do its magic.
        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
    </div>
	<div class="{{ site.doc_col_dark }}">
	{% highlight javascript %}
	<script type="text/javascript">
	    var PriceWaiterOptions = {
	        apiKey: 'DEMO',
	        product: {
	            sku: 'Product SKU',
	            name: 'Product Name',
	            price: 199,
	            image: 'images_demo_iphone.jpg'
	        },
	        metadata: {
	            referer: 'pinterest'
	        },
	        onLoad: function() {
	            alert('PriceWaiter is loaded');
	        }
	    };
	</script>
	{% endhighlight %}
    </div>
</div>