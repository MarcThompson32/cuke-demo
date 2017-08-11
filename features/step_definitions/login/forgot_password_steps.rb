Given /^I am on the forgot password page$/ do
	visit ForgotPasswordPage
end

When /^I request my password$/ do
	on(ForgotPasswordPage).request_password_sent_to("marc@email.com")
end

Then /^I should see an email sent confirmation$/ do
	expect(on(ForgotPasswordPage).confirmation_sent.include? CONFIRMATION_SENT)
end