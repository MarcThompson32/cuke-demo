COLUMN_1_SORTED_BY_FIRST = ["Bach", "Conway", "Doe", "Smith"]
COLUMN_2_SORTED_BY_SECOND = ["Frank", "Jason", "John", "Tim"]
COLUMN_3_SORTED_BY_THIRD =["fbach@yahoo.com", "jdoe@hotmail.com", "jsmith@gmail.com", "tconway@earthlink.net"] 
COLUMN_4_SORTED_BY_FOURTH = ["$50.00", "$50.00", "$51.00", "$100.00"]

Given /^I am on the demo table test page$/ do

	visit DemoTablePage
end

Then /^I should see table 1$/ do
	on(DemoTablePage).find_row('Email','jdoe@hotmail.com')
end

When /^I sort the table by the (first|second|third|fourth|fifth) column$/ do |coumn_number|
	case coumn_number
		when "first"
			on(DemoTablePage).column_header_last_name
		when "second"
			on(DemoTablePage).column_header_first_name
		when "third"
			on(DemoTablePage).column_header_email
		when "fourth"
			on(DemoTablePage).column_header_due
		when "fifth"
			on(DemoTablePage).column_header_web_site
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
			on(DemoTablePage).get_column_row_data("Web Site")
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
