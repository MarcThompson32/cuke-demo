require 'rspec/expectations'
require 'selenium-webdriver'
include RSpec::Matchers
require 'uuid'
require 'fileutils'

def setup
  @download_dir = File.join(Dir.pwd, UUID.new.generate)
  FileUtils.mkdir_p @download_dir

  # Firefox
  profile = Selenium::WebDriver::Firefox::Profile.new
  puts @download_dir
  profile['browser.download.dir'] = @download_dir
  profile['browser.download.folderList'] = 2
  profile['browser.helperApps.neverAsk.saveToDisk'] = 'images/jpeg, application/pdf, application/octet-stream'
  profile['pdfjs.disabled'] = true
  @driver = Selenium::WebDriver.for :firefox, profile: profile
end

def teardown
  @driver.quit
  FileUtils.rm_rf @download_dir
end

def setest
  setup
  @driver.get 'http://the-internet.herokuapp.com/download'
  puts "marc"
  download_link = @driver.find_element(css: '.example a')
  download_link.click

  files = Dir.glob("#{@download_dir}/*")
  expect(files.empty?).to eql false
  expect(File.size(files.first)).to be > 0

  teardown
end