class DemoLoginPage
	include PageObject
	include DataMagic
	
	page_url "http://the-internet.herokuapp.com/login"

	text_field(:username,:id => 'username')
	text_field(:password, :id => 'password')
	button(:login, :css => '.radius')

	def invalid_login
		self.populate_page_with data_for :invalid_login
		sleep 7
	end
end