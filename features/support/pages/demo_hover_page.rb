class DemoHoverPage
	include PageObject
	include DataMagic
	
	page_url "http://the-internet.herokuapp.com/hovers"

	h3(:page_heading, :css => '.example > h3:nth-child(1))')
	
	div(:avatar_1, :css => '#content > div > div:nth-child(3)')
	div(:avatar_2, :css => '#content > div > div:nth-child(4)')
	div(:avatar_3, :css => '#content > div > div:nth-child(5)')

	h5(:avatar_1_caption, :css => 'div.figure:nth-child(3) > div:nth-child(2) > h5:nth-child(1)')
	h5(:avatar_2_caption, :css => 'div.figure:nth-child(4) > div:nth-child(2) > h5:nth-child(1)')
	h5(:avatar_3_caption, :css => 'div.figure:nth-child(5) > div:nth-child(2) > h5:nth-child(1)')

	def verify_hover
		avatar_1? &&
		avatar_2? &&
		avatar_3? &&
		page_heading?
	end
end