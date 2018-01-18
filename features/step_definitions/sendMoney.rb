require 'selenium-webdriver'
require 'watir'

Given(/^that I have gone to the Google page$/) do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto "file:///Users/ub/Documents/PortableDocumentFile/html/Forms%20with%20input%20elements.htm"
end

When(/^I add "([^"]*)" to the search box$/) do |arg|
  @browser.text_field(:name => "new_user_first_name").set
  @browser.text_field(:name => "new_user_last_name").send_keys(thapa)
  @browser.text_field(:name => "new_user_email").send_keys(aravithpaa@gmail.com)
  @browser.text_field(:name => "new_user_email_confirm").send_keys(aravithapa@gmail.com)
  @browser.text_field(:id => "twotabsearchtextbox").send_keys(arg)
  sleep 3
end

And(/^click the Search Button$/) do
  @browser.find_element(:vlaue, 'Go').click
end

Then(/^"([^"]*)" should be mentioned in the results$/) do |item|
  @browser.title.should include(item)
  @browser.quit
end