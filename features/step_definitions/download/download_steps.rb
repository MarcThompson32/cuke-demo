Given(/^I am on the demo download page$/) do
  visit DemoDownloadPage
end

And /^I download a file$/ do
  on(DemoDownloadPage).first_download
  puts @download_dir
end