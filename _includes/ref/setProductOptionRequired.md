#### setProductOptionRequired(option, [required = true])

Mark one or more product options as "required". If an option is required the PriceWaiter UI will not be shown unless a value has been provided for that option via __setProductOption__.

If the user clicks the __Name Your Price__ button without configuring all required product options, the __onProductOptionsRequired__ callback is fired, with an array of missing options passed as the first argument. If the callback has not been configured, the widget uses __window.alert()__ to ask the user to provide all required options.

To mark multiple different options as required, pass an Array as the __option__ argument.

To mark options as no longer required, pass false as the __required__ argument

NOTE: A product option will fail the "requirement" test if:

* Its value was never set or
* Its value is equal to one of the following:
	* undefined
	* null
	* '' (empty string)
	* ' ' (empty string with whitespace)
