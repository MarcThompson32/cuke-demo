include Selenium::WebDriver::Keys

Given /^I am on the demo key press test page$/ do
	visit KeyPressPage
end

When /^I press (.*) key$/ do |key|
	on(KeyPressPage).page_title_element.send_keys(key.to_sym)

end

Then /^I should see the message (.*) displayed/ do |message_text|
	displayed_message = "You entered: " + message_text
	expect(on(KeyPressPage).key_press_result).to eql displayed_message
end