load File.join(File.dirname(__FILE__), "/support/env.rb")
load File.join(File.dirname(__FILE__), "/support/browser.rb")
load File.join(File.dirname(__FILE__), "/support/url.rb")

Given(/^we are on the sign in url/) do
  @browser = Watir::Browser.new :chrome
  @browser.goto $signin
end
When(/^i fill username as "([^"]*)"$/) do |arg|
  @browser.text_field(:name, 'login_email').set $email
end
And(/^i fill password as "([^"]*)"$/) do |arg|
  @browser.text_field(:name, 'login_password').set $password
  @browser.button(class: 'btn_large btn-login').click
end
Then(/^Login is unsuccessful$/) do
end