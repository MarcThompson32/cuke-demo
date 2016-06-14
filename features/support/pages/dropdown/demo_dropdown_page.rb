class DemoDropdownPage
	include PageObject
	include DataMagic
	
	page_url "http://the-internet.herokuapp.com/dropdown"

	select_list(:dropdown_list, :id => 'dropdown')
	
	def verify_dropdown
		dropdown_list?
	end
end

	
