class JavaScriptAlertPage
	include PageObject

	page_url "http://the-internet.herokuapp.com/javascript_alerts"

	button(:js_alert, :css => "#content > div > ul > li:nth-child(1) > button")
	button(:js_confirm, :css => ".example > ul:nth-child(3) > li:nth-child(2) > button:nth-child(1)")
	button(:js_prompt, :css => ".example > ul:nth-child(3) > li:nth-child(3) > button:nth-child(1)")
end
