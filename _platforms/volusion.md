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
4. In your Template HTML, find the `</head>` tag. Create a new line above it, and copy and paste the following code:

{% highlight html %}
<!-- Begin PriceWaiter code -->
<script type="text/javascript">
var PriceWaiterOptions = {
	product: {},
	button: {
	    size: 'lg' // or 'sm'
	},
	onLoad: function() {
		//onload product data
		PriceWaiter.setSKU($("span.product_code").html());
		PriceWaiter.setProduct($("span[itemprop=name]").html());
		var price = $("span[itemprop=price]").html();
		if(price) {
			price = price.replace(/[$,]+/g, "");
		} else {
			price = 0;
		}
		PriceWaiter.setPrice(parseFloat(price));
		var prodImg = document.getElementsByClassName('vCSS_img_product_photo');
		if(prodImg.length > 0) {
			PriceWaiter.setProductImage(prodImg[0].src);
		}
		//onload product options
		var selects = $('#vCSS_mainform select');
		for(var i=0; i < selects.length; i++) {
			var selectName = selects[i].name.replace(/SELECT.*_/g, "");
			var selectVal = selects[i].options[selects[i].selectedIndex].innerHTML;
			PriceWaiter.setProductOption(selectName, selectVal);
		}
		//tiny bit of styling
		var br = $('<br />');
		br.insertBefore($('iframe'));
		$('iframe').css('padding-top', '7px');
	}
};
</script>
<!-- End PriceWaiter code -->
{% endhighlight %}

<ol start="5">
    <li>Now find the <code>&lt;/body&gt;</code> tag. Create a new line above it, and copy and paste the following code:</li>
</ol>

{% highlight html %}
<!-- Begin PriceWaiter code -->
<script type="text/javascript">
(function () {
    if(document.getElementById('no_pricewaiter')) {
		return false;
    } else {
		var checkExist = setInterval(function() {
			if(document.getElementsByName('btnaddtocart') != null) {
				clearInterval(checkExist);
				var pwbutton = $('<span>', {id: 'pricewaiter'});
				pwbutton.insertAfter($('[name=btnaddtocart]'));
			}
		}, 200);
    }
})();
if(typeof change_option != 'undefined') {
	var orig_change_option = change_option;
	change_option = function(arg_selectbox, arg_optionid) {
		//set select and radio options
		var selectBox = document.getElementsByName(arg_selectbox)[0];
		var selectBoxId = arg_selectbox.replace(/SELECT.*_/g, "");
		var selectedValue = null;
		if(selectBox.type == 'radio') {
			var selectedRadioBtn = $('input[name=' + arg_selectbox + ']:checked')[0];
			var radioBtns = $('input[name=' + arg_selectbox + ']:checked').parent()[0].childNodes;
			for(var i=0; i<radioBtns.length; i++) {
				if(radioBtns[i] == selectedRadioBtn) {
					selectedValue = radioBtns[i+1].nodeValue.trim();
				}
			}
		} else {
			selectedValue = selectBox.options[selectBox.selectedIndex].innerHTML;
		}
		PriceWaiter.setProductOption(selectBoxId, selectedValue);
		//set price
		var priceRegex = /Add ([$,.0-9]+)/g;
		var match = priceRegex.exec(selectedValue);
		if(match != null) {
			var basePrice = parseFloat($("span[itemprop=price]").html().replace(/[$,]+/g, ""));
			PriceWaiter.setPrice(basePrice + parseFloat(match[1].replace(/[$,]+/g, "")));
		}
		//do original function
		return orig_change_option(arg_selectbox, arg_optionid);
	}
}
</script>
<script src="https://widget.pricewaiter.com/script/<your api key here>.js" async></script>
<!-- End PriceWaiter code -->
{% endhighlight %}

<ol start="6">
    <li>Be sure to change <code>&lt;your api key here&gt;</code> to your PriceWaiter API Key.</li>
    <li>Click <strong>"Save"</strong></li>
</ol>
