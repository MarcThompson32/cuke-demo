Given(/^I am on the demo hover test page$/) do
  visit DemoHoverPage
end

When(/^I hover over the (first|second|third) avatar$/) do |user|
	case user
		when "first"
			@browser.action.move_to(on(DemoHoverPage).avatar_1_element.element).perform
		when "second"
			@browser.action.move_to(on(DemoHoverPage).avatar_2_element.element).perform
		when "third"
			@browser.action.move_to(on(DemoHoverPage).avatar_3_element.element).perform
	end  
end

Then(/^I should see the (first|second|third) avatar message$/) do |user|
	case user
		when "first"
	  		expect(on(DemoHoverPage).avatar_1_caption).to eql HOVER1_TEXT
	  	when "second"
	  		expect(on(DemoHoverPage).avatar_2_caption).to eql HOVER2_TEXT
	  	when "third"
	  		expect(on(DemoHoverPage).avatar_3_caption).to eql HOVER3_TEXT
  	end
end

Then /^I should not see any avatar message$/ do
	
	expect(@browser.page_source).not_to include HOVER1_TEXT
	expect(@browser.page_source).not_to include HOVER2_TEXT
	expect(@browser.page_source).not_to include HOVER3_TEXT
end