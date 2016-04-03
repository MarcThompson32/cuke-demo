class DemoCheckboxPage
	include PageObject
	include DataMagic
	
	page_url "http://the-internet.herokuapp.com/checkboxes"

	checkbox(:checkbox_1, :css => '#checkboxes > input:nth-child(1)')
	checkbox(:checkbox_2, :css => '#checkboxes > input:nth-child(3)')

	def verify_checkbox
		checkbox_1? &&
		checkbox_2?
	end
end