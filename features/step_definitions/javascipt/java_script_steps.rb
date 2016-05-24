Given /^I am on the java script alert test page$/ do
	visit JavaScriptAlertPage
end

And /^I display a java script alert$/ do
	on(JavaScriptAlertPage).js_alert
end

And /^I display a java script confirm alert$/ do
	on(JavaScriptAlertPage).js_confirm
end

And /^I display a java script prompt alert$/ do
	on(JavaScriptAlertPage).js_prompt
end

And /^I accept the alert$/ do
	popup = @browser.alert
	popup.ok
end

And /^I should see the java script alert XXXTESTXXX$/ do
	popup = @browser.switch_to.alert
	alert = popup.text
  	alert_list = ['I am a JS Alert', 'I am a JS Confirm', 'I am a JS prompt']
  	puts alert_list.include?(alert)
  	puts "=="
end

And /^I cancel the java script alert$/ do
	popup = @browser.alert
	popup.close
end

Then /^I should not see the java script alert$/ do
	begin
	popup = @browser.alert
		#"No alert is present"
		rescue Exception => e
			expect(e.class).to be Selenium::WebDriver::Error::NoSuchAlertError	
	end
end

Then /^I should see the java script alert$/ do
	alert_popup = @browser.alert
	
  	alert_list = ['I am a JS Alert', 'I am a JS Confirm', 'I am a JS prompt']
  	expect(alert_list.include?(alert_popup.text)).to be true
end