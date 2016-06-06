class DynamicPageLoadPage
	include PageObject

	page_url 'http://the-internet.herokuapp.com/dynamic_loading/2'

	button(:start, :text => 'Start')
	div(:finished, :id => 'finish')
end