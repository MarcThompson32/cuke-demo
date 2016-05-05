class DemoTablePage
	include PageObject
	include DataMagic
	
	page_url "http://the-internet.herokuapp.com/tables"

	table(:table_1, :id => 'table1')
	link(:column_header_last_name, :css => 'thead:nth-child(1) > tr:nth-child(1) > th:nth-child(1) > span:nth-child(1)')
	link(:column_header_first_name, :css => 'thead:nth-child(1) > tr:nth-child(1) > th:nth-child(2) > span:nth-child(1)')
	link(:column_header_email, :css => '#table1 > thead > tr > th:nth-child(3) > span')
	
	link(:column_header_due, :css => '#table1 > thead:nth-child(1) > tr:nth-child(1) > th:nth-child(4) > span:nth-child(1)')
	link(:column_header_web_site, :css => 'thead:nth-child(1) > tr:nth-child(1) > th:nth-child(5) > span:nth-child(1)')

	def find_row(col, value)
		#puts self.table_1_element.first_row.text
		puts table_1_element.find{|row| row.include? value}
		puts self.table_1_element[3].text
		#puts self.table_1_element[value][column].methods
	end

	def column_sorted_ascending(column)
		#verify each item i in list is > i-1
	end

	def column_sorted_descending(column)
		#verify each item i in list is < i+1
	end

	def get_column_row_data(column)
		column_data = []
		(1..self.table_1_element.rows -  1).each do |row_num|
			#if !table_1[row_num][column].nil?
				column_data << table_1_element[row_num][column].text
			#end
		end
		column_data
	end
	
	def table_info(row,col)
		puts "number of columns=#{self.table_1_element[0].to_a.length}"
		puts self.table_1_element.to_a
	end

	def verify_table_page
		table_1? &&
		column_header_last_name?
	end
end