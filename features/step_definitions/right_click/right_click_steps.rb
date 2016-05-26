Given /^I am on the context menu page$/ do
	visit DemoContextMenuPage
end

Then /^I should see the context menu hotspot$/ do
	expect(on(DemoContextMenuPage).context_menu_hotspot?).to eql true
end

Then /^I should (see|not see) the right click menu dialog$/ do |variable|
	alert_popup = @browser.alert

	case  variable
	when "see"
		expect(alert_popup.text.include? CONTEXT_MENU_TEXT).to eql true
	when "not see"
		begin
			popup = @browser.alert
		
			#"No alert is present"
			rescue Exception => e
				expect(e.class).to be Watir::Exception::UnknownObjectException
		end
	end
end

And /^I select the 'the-internet' option$/ do
	@browser.send_keys(:arrow_down)
	@browser.send_keys(:arrow_down)
	@browser.send_keys(:arrow_down)
	@browser.send_keys(:arrow_down)
	@browser.send_keys(:arrow_down)
	@browser.send_keys(:enter)
end

When /^I right click context menu hot spot$/ do
	on(DemoContextMenuPage).context_menu_hotspot_element.right_click
end