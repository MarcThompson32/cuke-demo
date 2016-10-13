class DynamicPageLoadPage
	include PageObject

	page_url 'http://the-internet.herokuapp.com/dynamic_loading/2'

	button(:start, :css => '#start > button:nth-child(1)')
	div(:finished, :id => 'finish')
end