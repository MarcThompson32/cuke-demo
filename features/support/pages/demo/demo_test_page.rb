class DemoTestPage
	include PageObject
	
	page_url "http://the-internet.herokuapp.com"

	h1(:heading, :class => 'heading')
	link(:first_download, :css => '.example a')
end