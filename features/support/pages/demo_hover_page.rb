class DemoHoverPage
	include PageObject
	include DataMagic
	
	page_url "http://the-internet.herokuapp.com/hovers"

	h3(:page_heading, :css => '.example > h3:nth-child(1))')

# class 'figure'
	link(:avatar_1, :css => '#content > div > div:nth-child(3) > img')
	link(:avatar_2, :css => 'div.figure:nth-child(4) > img:nth-child(1)')
	link(:avatar_3, :css => 'div.figure:nth-child(5) > img:nth-child(1)')

	h5(:avatar_1_caption, :css => 'div.figure:nth-child(3) > div:nth-child(2)')
	h5(:avatar_2_caption, :css => 'div.figure:nth-child(4) > div:nth-child(2)')
	h5(:avatar_3_caption, :css => 'div.figure:nth-child(5) > div:nth-child(2)')

	def verify_hover
		avatar_1? &&
		avatar_2? &&
		avatar_3? &&
		page_heading?
	end
end