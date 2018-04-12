load File.join(File.dirname(__FILE__), "/support/env.rb")
#load File.join(File.dirname(__FILE__), "/support/browser.rb")
load File.join(File.dirname(__FILE__), "/support/url.rb")
load File.join(File.dirname(__FILE__), "/support/errorC.rb")

Given(/^we are on the signup url/) do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto $signup
end
When(/^set the value in email as "([^"]*)"$/) do |email|
  @browser.text_field(:placeholder,"Your email address").set "#{email}"
end
And(/^set the value in password as "([^"]*)"$/) do |password|
  @browser.text_field(:placeholder,"Your password").set "#{password}"
end
And(/^set the same value in password as "([^"]*)"$/) do |rePasswords|
  @browser.text_field(:placeholder,"Confirm your password").set "#{rePasswords}"
  @browser.div(:class => "ui checkbox").when_present.click
  @browser.button(class: 'btn_large btn-login').click
end
Then(/^sign up should be unsuccessful$/) do
  sleep 3
  if @browser.url == $signup
    puts 'pass'
    sleep 3
  else
    puts 'fail'
    sleep 3
  end
end