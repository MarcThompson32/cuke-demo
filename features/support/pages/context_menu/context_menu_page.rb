class DemoContextMenuPage
	include PageObject
	include DataMagic
	
	page_url 'http://the-internet.herokuapp.com/context_menu'

	h5(:context_menu_title, :css => '.example > h3:nth-child(1)')
	div(:context_menu_hotspot, :id => 'hot-spot')
	div(:right_click_menu, :css => '#menu > menuitem:nth-child(1)')
	div(:right_click_menu2, :css => '#menu')

	def verify_context_menu_page
		context_menu_title? &&
		context_menu_hotspot?
	end
end