load File.join(File.dirname(__FILE__), "/support/env.rb")
#load File.join(File.dirname(__FILE__), "/support/browser.rb")
load File.join(File.dirname(__FILE__), "/support/url.rb")
load File.join(File.dirname(__FILE__), "/support/errorC.rb")
Given(/^we are on the signin url/) do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto $signin
end
When(/^i fill username as (.*)$/) do |email|
  @browser.text_field(:name, 'login_email').set "#{email}"
end
And(/^i fill password as (.*)$/) do |password|
  @browser.text_field(:name, 'login_password').set "#{password}"
  @browser.button(class: 'btn_large btn-login').click
end
Then(/^Login is unsuccess$/) do
  sleep 3
  if @browser.url == $signin
    puts 'pass'
    sleep 3
  else
    puts 'fail'
    sleep 3
  end
end
