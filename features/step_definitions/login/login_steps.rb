Given(/^I am on the login test page$/) do
  visit DemoLoginPage
end

When /^I log in with invalid user name credentials$/ do
	on(DemoLoginPage).invalid_user_name_login
end

When /^I log in with valid credentials$/ do
	on(DemoLoginPage).login_element.flash
	on(DemoLoginPage).valid_login
end

When /^I log in with invalid password credentials$/ do
	on(DemoLoginPage).invalid_password_login
end

When /^I log in with invalid credentials$/ do
	on(DemoLoginPage).invalid_login
end

Then /^I should see the succesful login message$/ do
	expect(on(DemoLoginPage).verify_login_succesful).to eql true
end

Then /^I should see the invalid login message$/ do
	expect(on(DemoLoginPage).verify_login_failure).to eql true
end