COLUMN_1_SORTED_BY_FIRST = ["Bach", "Conway", "Doe", "Smith"]
COLUMN_2_SORTED_BY_SECOND = ["Frank", "Jason", "John", "Tim"]
COLUMN_3_SORTED_BY_THIRD =["fbach@yahoo.com", "jdoe@hotmail.com", "jsmith@gmail.com", "tconway@earthlink.net"] 
COLUMN_4_SORTED_BY_FOURTH = ["$50.00", "$50.00", "$51.00", "$100.00"]
COLUMN_5_SORTED_BY_FIFTH = ["http://www.frank.com", "http://www.jdoe.com", "http://www.jsmith.com", "http://www.timconway.com"]

Given /^I am on the demo table test page$/ do
	visit DemoTablePage
end

Then /^I should see table 1$/ do
	expect(on(DemoTablePage).table_1?).to eql true
end

When /^I sort the table by the (first|second|third|fourth|fifth) column$/ do |coumn_number|
	case coumn_number
		when "first"
			on(DemoTablePage).column_header_last_name_element.click
		when "second"
			on(DemoTablePage).column_header_first_name_element.click
		when "third"
			on(DemoTablePage).column_header_email_element.click
		when "fourth"
			on(DemoTablePage).column_header_due_element.click
		when "fifth"
			on(DemoTablePage).column_header_web_site_element.click
		else
			puts "invalid option!"

		end	
end

Then /^I should see (\d+) table rows$/ do |row_count|
	expect(on(DemoTablePage).table_1_element.rows - 1).to eql row_count.to_i
end

Then /^I should see (\d+) table columns$/ do |column_count|
	expect(on(DemoTablePage).table_1_element[0].to_a.length).to eql column_count.to_i
end

Then /^I should see the table sorted in ascending order by (first|second|third|fourth|fifth) column$/ do |column_number|
		case column_number
		when "first"
			expect(on(DemoTablePage).get_column_row_data("Last Name")).to eql COLUMN_1_SORTED_BY_FIRST
		when "second"
			expect(on(DemoTablePage).get_column_row_data("First Name")).to eql COLUMN_2_SORTED_BY_SECOND
		when "third"
			expect(on(DemoTablePage).get_column_row_data("Email")).to eql COLUMN_3_SORTED_BY_THIRD
		when "fourth"
			expect(on(DemoTablePage).get_column_row_data("Due")).to eql COLUMN_4_SORTED_BY_FOURTH
		when "fifth"
			expect(on(DemoTablePage).get_column_row_data("Web Site")).to eql COLUMN_5_SORTED_BY_FIFTH
	end
end

Then /^I should see "(.*\s*)" column$/ do |column_name|
	expect(on(DemoTablePage).table_1_element.first_row.text).to include column_name
end

Then /^I should see (.*) in the (First Name|Last Name|Email|Due|Web Site) column$/ do |column_data, column|
	expect(on(DemoTablePage).get_column_row_data(column).include? column_data).to eql true
end

#<=>1 ascending
#<=>-1 descending
