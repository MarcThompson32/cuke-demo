Given /^I am on the demo dropdown test page$/ do
	visit DemoDropdownPage
end

When /^I select the (first|second) option$/ do |option|
	case option
		when "first"
			on(DemoDropdownPage).dropdown_list=first_option	
			sleep 3
		when "second"
			on(DemoDropdownPage).dropdown_list=second_option	
			sleep 3
	end
end

Then /^I should see the (first|second) option is selected$/ do |option|
	case option
		when "first"
			expect(on(DemoDropdownPage).dropdown_list).to eql first_option
		when "second"
			expect(on(DemoDropdownPage).dropdown_list).to eql  second_option
	end
end

Then /^I should see that option is disabled$/ do
	expect(on(DemoDropdownPage).dropdown_list_element.enabled?).to eql true
	#puts @browser.find_element(:id, 'dropdown').enabled?
	#puts on(DemoDropdownPage).dropdown_list_options

	#items_of_interest = on(DemoDropdownPage).dropdown_list_options.find { |dropdown| dropdown.text == 'Please select an option' }

 	#expect(item_of_interest.enabled?).to eql true
end

def first_option
	option_list = on(DemoDropdownPage).dropdown_list_options
	option_list[1]
end

def second_option
	option_list = on(DemoDropdownPage).dropdown_list_options
	option_list[2]
end

Then /^I should see "(.*)" selected$/ do |option_text|
	expect(on(DemoDropdownPage).dropdown_list).to eql option_text
end

When /^I select "(.*)" from the dropdown$/ do |option_text|
	on(DemoDropdownPage).dropdown_list=option_text
end