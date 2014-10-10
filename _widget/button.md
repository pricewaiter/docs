---
title: Button
---

Control the look and feel of the Name Your Price button on your website.

|--------|-------------|--------|---------------|
| Option | Description | Values | Default Value |
|--------|-------------|--------|---------------|
|type(string) |Controls the style and text of button injected into the page.|'button_nyp', 'button_mo', 'text_nyp', 'text_mo'| button_nyp|
|color(string) |The background color used for the 'button' type or the text color used for the 'text' type.| hexadecimal code | #97C0E6|
|hoverColor(string) | The hover state background color for 'button' or the text color hover state for the 'text' type. | hexadecimal code | #6D9FD6|
|buttonTextColor(string) | The color used for the text and icon of the 'button' type. The currently accepted values are 'white' or 'black'.| hexadecimal code| (Best value based on color) |
|buttonTextHoverColor(string)| The color used for the text and icon of the 'button' type in its hover state. The currently accepted values are 'white' or 'black'.| hexadecimal code | (Best value based on hoverColor)|
|size(string)| The size and dimensions of the button depending on which 'type' you are using.| 'sm' or 'lg' | lg|

{% highlight javascript %}
var PriceWaiterOptions = {
    // Not shown: apiKey and other required options
    button: {
        type: 'button_nyp',
        size: 'lg',
        color: '#666',
        hoverColor: '#333'
    }
};
{% endhighlight %}