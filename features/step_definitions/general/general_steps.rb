And /^I wait (\d+) seconds$/ do |sec|
	sleep sec.to_i
end

Given /^I am on the demo test page$/ do
	visit DemoTestPage
end