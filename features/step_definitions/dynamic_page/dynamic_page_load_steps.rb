Given /^I am on the dynamic page load page$/ do
	visit DynamicPageLoadPage
end

When /^I initiate the page redraw$/ do
	on(DynamicPageLoadPage).start
end

Then /^I should see that the page (is|is not) rendendered$/ do |option|
	case option
	when "is"
		on(DynamicPageLoadPage).wait_until(10,"element not found") do		
			on(DynamicPageLoadPage).finished?
		end
		expect(on(DynamicPageLoadPage).finished?).to eql true
	when "is not"
		begin
			on(DynamicPageLoadPage).finished
			rescue Exception => e
				expect(e.class).to be  Watir::Exception::UnknownObjectException
		end
		expect(on(DynamicPageLoadPage).finished?).to eql false
	end
end