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
		when "fourth"
		when "fifth"
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
			on(DemoTablePage).get_column_row_data("Last Name")
			#puts on(DemoTablePage).table_1_element[0][0].text #[ROW][COL] row = 0, col[0..]
			#puts on(DemoTablePage).table_1_element[0][0].to_a
		when "second"
			puts on(DemoTablePage).table_1_element[0][1].text
			puts on(DemoTablePage).table_1_element[1][1].text
		when "third"
			puts on(DemoTablePage).table_1_element[0][2].text
			puts on(DemoTablePage).table_1_element[1][2].text
		when "fourth"
			puts on(DemoTablePage).table_1_element[0][3].text
			puts on(DemoTablePage).table_1_element[1][3].text
		when "fifth"
			puts on(DemoTablePage).table_1_element[0][4].text
			puts on(DemoTablePage).table_1_element[1][4].text
	end
end

Then /^I should see "(.*\s*)" column$/ do |column_name|
	expect(on(DemoTablePage).table_1_element.first_row.text).to include column_name
end

Then /^I should see (.*) in the Last Name column$/ do |data|
	expect(on(DemoTablePage).get_column_row_data("Last Name")).to include 
end