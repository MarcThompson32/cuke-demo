require 'page-object'
require 'rubygems'
require 'rspec/expectations'
require 'rspec'
require 'yaml'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'uuid'
include RSpec::Matchers

Before do
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.assume_untrusted_certificate_issuer = false
  #puts profile.methods
  @browser = Selenium::WebDriver.for :firefox, :profile => "Cucumber" #use the cucumber profile

  cuke_profile = Selenium::WebDriver::Firefox::Profile.from_name "Cucumber"
  #@browser = Selenium::WebDriver.for :firefox, profile => cuke_profile
end

After do
  @browser.quit
end