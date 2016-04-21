require 'selenium-webdriver'
require 'page-object'
require 'page-object/page_factory'
require 'fig_newton'
require 'data_magic'

World(PageObject::PageFactory)
$TIMEOUT = 20
LOGIN_USERNAME_FAILURE = "Your username is invalid!"
LOGIN_PASSWORD_FAILURE = "Your password is invalid!"
LOGIN_SUCCESS = "You logged into a secure area!"
CONFIRMATION_SENT = "Your 	e-mail's been sent!"

HOVER1_TEXT = "name: user1\nView profile"
HOVER2_TEXT = "name: user2\nView profile"
HOVER3_TEXT = "name: user3\nView profile"