require 'page-object'
require 'rubygems'
require 'rspec/expectations'
require 'rspec'
#require 'yaml'
require 'data_magic'
require 'fig_newton'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'uuid'
include RSpec::Matchers


World(PageObject::PageFactory)

DataMagic.yml_directory = File.expand_path('.') + '/features/config/data'
FigNewton.yml_directory = File.expand_path('.') + '/features/config/environments'
#DataMagic.load 'demo_data.yml'

World(PageObject::PageFactory)
World(DataMagic)

Before do
	@download_dir = "c:\\automation"
  	
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.assume_untrusted_certificate_issuer = false
  profile['browser.download.dir'] = @download_dir
  #puts profile.methods
  @browser = Selenium::WebDriver.for :firefox, :profile => "Cucumber" #use the cucumber profile

  cuke_profile = Selenium::WebDriver::Firefox::Profile.from_name "Cucumber"
  #@browser = Selenium::WebDriver.for :firefox, profile => cuke_profile
end

After do
  @browser.quit
end