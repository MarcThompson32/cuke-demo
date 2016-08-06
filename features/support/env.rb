require 'page-object'
require 'rubygems'
require 'rspec/expectations'
require 'rspec'
#require 'yaml'
require 'data_magic'
require 'fig_newton'
#require 'selenium-webdriver'
require 'watir-webdriver'
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
  
  # Chrome
 # @browser = Watir::Browser.new :chrome

  # firefox
  @browser = Watir::Browser.new :firefox, :profile => 'Cucumber'
end

After do |scenario|
  if scenario.failed?
    screenshot_filename =  File.expand_path('.') +"/features/output/#{Time.now.strftime("screenshot_%d_%m_%Y_%H_%M_%S")}.png" 

    @browser.screenshot.save screenshot_filename

    puts "-> #{screenshot_filename}"  
  end

  @browser.quit
end