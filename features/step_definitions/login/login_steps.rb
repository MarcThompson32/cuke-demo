Given(/^I am on the login test page$/) do
  visit DemoLoginPage
end

When /^I log in with invalid credentials$/ do
	on(DemoLoginPage).invalid_login
end
