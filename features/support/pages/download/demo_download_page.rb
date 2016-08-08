class DemoDownloadPage
	include PageObject
	
	page_url "http://the-internet.herokuapp.com/download"

	link(:first_download, :css => '.example a')
end