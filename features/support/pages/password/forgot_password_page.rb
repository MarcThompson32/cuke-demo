class ForgotPasswordPage
	include PageObject
	include DataMagic

	page_url 'http://the-internet.herokuapp.com/forgot_password'

	div(:confirmation_sent, :css => '#content')
	button(:retrieve_password, :id => 'form_submit')
	text_field(:email, :id => 'email')

	def verify_forgot_password
		retrieve_password? &&
		email?
	end

	def request_password_sent_to(email_address)
		self.email = email_address
		retrieve_password
	end
end
