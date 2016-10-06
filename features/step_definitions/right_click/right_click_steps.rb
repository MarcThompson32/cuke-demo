#include 

Given /^I am on the context menu page$/ do
	visit DemoContextMenuPage
end

Then /^I should see the context menu hotspot$/ do
	expect(on(DemoContextMenuPage).context_menu_hotspot?).to eql true
end

Then /^I should (see|not see) the right click menu dialog$/ do |variable|

	case  variable
	when "see"
		alert_popup = @browser.switch_to.alert
		expect(alert_popup.text.include? CONTEXT_MENU_TEXT).to eql true
	end
end

And /^I select the 'the-internet' option$/ do
	@browser.action.send_keys(:arrow_right).perform
	@browser.action.send_keys(:arrow_down).perform
	@browser.action.send_keys(:arrow_down).perform
	@browser.action.send_keys(:arrow_down).perform
	@browser.action.send_keys(:arrow_down).perform
	@browser.action.send_keys(:enter).perform
end

When /^I right click context menu hot spot$/ do
	on(DemoContextMenuPage) do |page|
  		e = page.context_menu_hotspot_element.element
  		page.browser.action.context_click(e).perform
	end
	
	#@browser.find_element(:id, 'hot-spot').right_click
	#@browser.find_element(:id, 'hot-spot').right_click
	#hotspot = on(DemoContextMenuPage).context_menu_hotspot_element
	#hotspot.context_click
	#hotspot.when_visible(10).right_click
	
	 #@driver.action.context_click(menu_area)
end