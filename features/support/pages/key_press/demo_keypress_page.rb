class KeyPressPage
	include PageObject
	include DataMagic

	page_url 'http://the-internet.herokuapp.com/key_presses'

	h3(:page_title, :css => '.example > h3:nth-child(1)')
	paragraph(:key_press_result, :css => '#result')

	def verify_keypress_page
		page_title? &&
		key_press_result?
	end
end