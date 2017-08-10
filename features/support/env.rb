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
  
  profile = Selenium::WebDriver::Firefox::Profile.from_name("Cucumber")
  profile.assume_untrusted_certificate_issuer = false
  profile['browser.download.dir'] = @download_dir

  caps = Selenium::WebDriver::Remote::W3CCapabilities.firefox
  caps[:firefox_options] = { profile: profile.as_json['zip'] }
  #@browser = Selenium::WebDriver.for(:firefox, desired_capabilities: caps)
  
  @browser = Selenium::WebDriver.for :firefox, :profile => "Cucumber" #use the cucumber profile
  #@browser = Selenium::WebDriver.for :firefox
  
  #@browser = Selenium::WebDriver.for :firefox, profile => cuke_profile
end

After do |scenario|
  if scenario.failed?
    screenshot_filename =  File.expand_path('.') +"/features/output/#{Time.now.strftime("screenshot_%d_%m_%Y__%H_%M_%S")}.png" 
    puts "-> #{screenshot_filename}"
    @browser.save_screenshot screenshot_filename
    #puts "ERROR -> #{@browser.methods}"
  end

  @browser.quit
end 