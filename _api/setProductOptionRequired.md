---
title: "setProductOptionRequired(option, [required = true])"
nav_title: "setProductOptionRequired()"
---

Mark one or more product options as "required". If an option is required the PriceWaiter UI will not be shown unless a value has been provided for that option via __setProductOption__.

If the user clicks the __Name Your Price__ button without configuring all required product options, the [__onProductOptionsRequired__](/widget/documentation.html#_widget/onProductOptionsRequired.md) callback is fired, with an array of missing options passed as the first argument. If the callback has not been configured, the widget uses `window.alert()` to ask the user to provide all required options.

__NOTE:__ A product option will fail the "requirement" test if:

* Its value was never set or
* Its value is equal to one of the following:
	* undefined
	* null
	* '' (empty string)
	* ' ' (empty string with whitespace)


<pre><code class="javascript">
// Example setting a single option as required
PriceWaiter.setProductOptionRequired('color');

// Example setting multiple options as required
PriceWaiter.setProductOptionRequired([
    'color',
    'size',
    'fragrance'
]);
</code></pre>

#### Unsetting Required Options

To mark options as no longer required, you can use [__clearProductOption__](#_api/clearProductOption.md), [__clearProductOptions__](#_api/clearProductOptions.md) or pass `false` as the __required__ argument _(see example)__

<pre><code class="javascript">
// Example make 'color' not required
PriceWaiter.setProductOptionRequired('color', false);

// Example make multiple options not required
PriceWaiter.setProductOptionRequired([
    'color',
    'size',
    'fragrance'
], false);
</code></pre>