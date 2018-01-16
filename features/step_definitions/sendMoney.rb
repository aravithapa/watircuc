require 'selenium-webdriver'
require 'watir'

Given(/^that I have gone to the Google page$/) do
  @browser = Watir::Browser.new :chrome
  @browser.goto "http://www.google.com"
  @browser.window.maximize
  sleep 5
end

When(/^I add "([^"])" to the search box$/) do |arg|
  @browser.find_element(:name,'q').send_keys(arg)
  sleep 3
end

And(/^click the Search Button$/) do
  @browser.find_element(:name, 'btnG').click
end

Then(/^"([^"]*)" should be mentioned in the results$/) do |item|
  @browser.title.should include(item)
  @browser.quit
end