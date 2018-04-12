load File.join(File.dirname(__FILE__), "/support/env.rb")
#load File.join(File.dirname(__FILE__), "/support/browser.rb")
load File.join(File.dirname(__FILE__), "/support/url.rb")
load File.join(File.dirname(__FILE__), "/support/errorC.rb")

Given(/^we are on the profile url$/) do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto $profile
  @browser.text_field(:name, 'login_email').set 'ravi@remitasia.com'
  @browser.text_field(:name, 'login_password').set 'ravi1234'
  @browser.button(class: 'btn_large btn-login').click
  sleep 5
end

When(/^i fill firstname as (.*)$/) do |firstname|

end

And(/^i fill lastname as (.*)$/) do |lastname|

end

And(/^i fill email as (.*)$/) do |email|

end

And(/^i fill zipcode as (.*)$/) do |zipcode|

end

And(/^i fill phone as (.*)$/) do |phone|

end

And(/^i fill dob as (.*)$/) do |dob|

end

And(/^i fill country as (.*)$/) do |country|

end

And(/^i fill city as (.*)$/) do |city|

end

And(/^i fill street as (.*)$/) do |street|

end