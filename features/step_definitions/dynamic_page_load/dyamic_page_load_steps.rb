Given /^I am on the dynamic page load page$/ do
	visit DynamicPageLoadPage
end

When /^I initiate the page redraw$/ do
	on(DynamicPageLoadPage).start
end

Then /^I should see that the page (is|is not) rendendered$/ do |option|
	case option
	when "is"
		on(DynamicPageLoadPage).wait_until(10,"Hello World!") do		
			on(DynamicPageLoadPage).finished?
		end
		expect(on(DynamicPageLoadPage).finished?).to eql true
	when "is not"
		begin
			on(DynamicPageLoadPage).finished
			rescue Exception => e
				expect(e.class).to be Selenium::WebDriver::Error::NoSuchElementError
		end
		expect(on(DynamicPageLoadPage).finished?).to eql false
	end
end