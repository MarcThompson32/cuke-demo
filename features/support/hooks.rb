require 'selenium-webdriver'
require 'page-object'
require 'page-object/page_factory'
require 'fig_newton'
require 'data_magic'

World(PageObject::PageFactory)
$TIMEOUT = 20