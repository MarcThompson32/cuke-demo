Given(/^I am on the demo download page$/) do
  visit DemoDownloadPage
end

And /^I download a file$/ do
  on(DemoDownloadPage).first_download

  @download_dir = File.join(Dir.pwd, UUID.new.generate)
  FileUtils.mkdir_p @download_dir

  #profile = Selenium::WebDriver::Firefox::Profile.new
  #profile['browser.download.dir'] = @download_dir
  #profile['browser.download.folderList'] = 2
  #profile['browser.helperApps.neverAsk.saveToDisk'] = 'images/jpeg, application/pdf, application/octet-stream, txt'
  #profile['pdfjs.disabled'] = true
  #@browser = Selenium::WebDriver.for :firefox, profile: profile
  puts @browser
end

Then /^I should see the downloaded file locally$/ do
	puts @download_dir
	puts Dir.entries(@download_dir)
	#OtlobLogins.xlsx 
end
