Given /^I am on the demo checkbox test page$/ do
	visit DemoCheckboxPage
end

Given /^both checkboxes are unchecked$/ do
	on(DemoCheckboxPage).uncheck_checkbox_1
	on(DemoCheckboxPage).uncheck_checkbox_2
end

Then /^I should see check box 1 is unchecked$/ do
	expect(on(DemoCheckboxPage).checkbox_1_checked?).to eql false
end

Then /^I should see check box 2 is unchecked$/ do
	expect(on(DemoCheckboxPage).checkbox_2_checked?).to eql false
end

When /^I check check box (1|2)$/ do |checkbox_num|
	case checkbox_num
		when "1"
			on(DemoCheckboxPage).check_checkbox_1
		when "2"
			on(DemoCheckboxPage).check_checkbox_2
	end
end

Then /^I should see check box (1|2) is checked$/ do |checkbox_num|
	case checkbox_num
		when "1"
			expect(on(DemoCheckboxPage).checkbox_1_checked?).to eql true
		when "2"
			expect(on(DemoCheckboxPage).checkbox_2_checked?).to eql true
	end
end