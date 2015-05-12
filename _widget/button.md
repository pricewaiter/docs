---
title: Button
---

Control the look and feel of the Name Your Price button on your website.
These settings are also easily changed in your [PriceWaiter account](https://manage.pricewaiter.com/store/button).

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
|color(string) |The background color used for the button.| hexadecimal code | #97C0E6|
|hoverColor(string) | The hover state background color for the button. | hexadecimal code | #6D9FD6|
|buttonTextColor(string) | The color used for the text and icon of the button. The currently accepted values are 'white' or 'black'.| hexadecimal code| (Best value based on color) |
|buttonTextHoverColor(string)| The color used for the text and icon of the button in its hover state. The currently accepted values are 'white' or 'black'.| hexadecimal code | (Best value based on hoverColor)|
|size(string)| Which predefined button size to use.| 'sm' or 'lg' | lg|

{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    button: {
        size: 'lg',
        color: '#666',
        hoverColor: '#333'
    }
};
{% endhighlight %}
