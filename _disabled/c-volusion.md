---
layout: page
title: "Volusion Integration Guide"
nav_title: "Volusion <em>(Guide)</em>"
---

## Adding the Widget Code


1. Login to your Volusion admin panel
2. At the top of the page, navigate to __"Design" > "Templates"__
3. In the gray Advanced Editing box, click __"Edit HTML"__
4. Before the end of the HTML `</head>` tag, insert the following code:

{% highlight javascript %}
<!-- Begin PriceWaiter Code -->
<script type="text/javascript">
var PriceWaiterOptions = {
        apiKey: 'YOUR API KEY', // REPLACE "YOUR API KEY" YOUR STORE'S PW API KEY
        product: {},
        button: {
        size: 'sm' // SEE ONLINE DOCUMENTATION FOR WIDGET OPTIONS TO CHANGE BUTTON DEFAULT STYLE
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

        //tiny bit of formatting (optional)
        var br = $('<br />');
        br.insertBefore($('iframe'));
        $('iframe').css('padding-top', '7px');
    }
};
</script>
<!-- End PriceWaiter Code -->
{% endhighlight %}


<ol start="5">
    <li>Near the end of the page, before the end of the HTML <code>&gt;/body&lt;</code> tag, insert the following code:</li>
</ol>

{% highlight javascript %}
<!-- Begin PriceWaiter Code -->
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
                var pw = document.createElement('script');
                pw.type = 'text/javascript';
                pw.src = "https://widget.pricewaiter.com/nyp/script/widget.js";
                pw.async = true;
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(pw, s);
            }
        }, 200);
    }
}) ();

if(typeof change_option != 'undefined') {
    var orig_change_option = change_option;
    change_option = function(arg_selectbox, arg_optionid) {

        //pricewaiter things
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
<!-- End PriceWaiter Code -->
{% endhighlight %}

* * *

## Disabling the Widget _(per product)_


For each product that you don't want the Name Your Price widget to appear on, follow these steps.

1. Go go edit a single product __"Inventory" > "Products"__
2. At the very bottom of the page, under Advanced Info, select the __Product Descriptions tab__.
3. In the text box labeled __"Product Description Above Pricing"__, place the following code:

{% highlight javascript %}
<!-- Begin Disable PriceWaiter Widget On This Page -->
<span id="no_pricewaiter"></span>
<!-- End Disable PriceWaiter Widget On This Page -->
{% endhighlight %}
