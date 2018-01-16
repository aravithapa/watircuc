require 'selenium-webdriver'
require 'watir'

Given(/^that I have gone to the Google page$/) do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto "https://www.amazon.com"
end

When(/^I add "([^"]*)" to the search box$/) do |arg|
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