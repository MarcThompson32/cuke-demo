class DemoDownloadPage
	include PageObject
	
	page_url "http://the-internet.herokuapp.com/download"

	link(:first_download, :css => '#content > div > a:nth-child(2)')
	#content > div > a:nth-child(2)
end