	class DemoLoginPage
		include PageObject
		include DataMagic
		
		page_url "http://the-internet.herokuapp.com/login"

		text_field(:username,:id => 'username')
		text_field(:password, :id => 'password')
		button(:login, :css => '.radius')
		div(:invalid_username_error, :id => 'flash')
		div(:login_warning, :id => 'flash')	

	def invalid_login
		self.populate_page_with data_for "login/invalid_login"
		login
	end

	def invalid_user_name_login
		self.populate_page_with data_for "login/invalid_user_name_login"
		login
	end

	def invalid_password_login
		self.populate_page_with data_for "login/invalid_password_login"
		login
	end

	def valid_login
		self.populate_page_with data_for "login/valid_login"
		login
	end
	
	def verify_login_username_error
		expect(self.invalid_username_error?).to eql true
	end

	def verify_login_succesful
		expect(self.login_warning.include? LOGIN_SUCCESS).to eql true
	end

	def verify_login_failure
		username_failure = self.login_warning.include? LOGIN_USERNAME_FAILURE
		password_failure = self.login_warning.include? LOGIN_PASSWORD_FAILURE

		expect(username_failure || password_failure).to eql true
	end
end