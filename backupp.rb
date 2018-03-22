require "watir"
require "cucumber"

Given(/^a user goes to amazon$/) do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto "file:///Users/ub/Documents/PortableDocumentFile/html/Forms%20with%20input%20elements.htm"
  #@browser.goto "http://143.95.39.8/~remitasi/casa_react/signin"
end
When(/^they search for "([^"]*)"$/) do |query|
=begin
  @browser.text_field(:name, 'login_email').set "#{username}"
  @browser.text_field(:name, 'login_password').set "#{password}"
  @browser.button(class: 'btn_large btn-login').click
=end
=begin
@browser.text_field(:name, 'new_user_first_name').set "#{query}"
  sleep 4
end
When(/^they put value for (.*)$/) do |username|
  @browser.text_field(:name, 'new_user_first_name').set "#{username}"

end
And(/^set value for (.*)$/) do |password|
  @browser.text_field(:name, 'new_user_last_name').set "#{password}"
=end
end


When(/^they put value for (.*)$/) do |firstname|
  pending
end

And(/^set value for (.*)$/) do |email|
  pending
end





l
Given(/^we are on the login urls$/) do

end

When(/^I enter username as "([^"]*)"$/) do |arg|

end

And(/^I enter password as "([^"]*)"$/) do |arg|

end

Then(/^login should be unsucessful$/) do

end

=begin
Feature: Recipient add edit money sending money scenerios
  Background:
    Given we are on the login url
    Scenario Outline:
      When i fill username as "<email>"
      And i fill password as "<password>"
      Then Login is unsuccessful
      Examples:
        | email            |password|
        |ravi@remitasia.com|password|
        |ravi@remitasia.com|        |
        |                  |ravi1234|
        |                  |        |


load "support/env.rb"
load "support/browser.rb"
load "support/url.rb"
load "url"

Given(/^we are on the login url$/) do
  @browser.goto "http://www.amazon.com"
end
When(/^i fill username as "([^"]*)"$/) do |arg|
  @browser.text_field(:name, 'login_email').set "#{username}"
end

And(/^i fill password as "([^"]*)"$/) do |arg|
  @browser.text_field(:name, 'login_password').set "#{password}"
  @browser.button(class: 'btn_large btn-login').click
end

Then(/^Login is unsuccessful$/) do
  Watir::Wait.until(@browser.text.include? "You've been successfully logged")
end
=end


