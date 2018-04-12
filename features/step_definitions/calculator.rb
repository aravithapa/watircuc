load File.join(File.dirname(__FILE__), "/support/env.rb")
#load File.join(File.dirname(__FILE__), "/support/browser.rb")
load File.join(File.dirname(__FILE__), "/support/url.rb")

Given(/^we are on the calcpage url/) do
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto $calcurl
  @browser.text_field(:name, 'login_email').set 'ravi@remitasia.com'
  @browser.text_field(:name, 'login_password').set 'ravi1234'
  @browser.button(class: 'btn_large btn-login').click
end
When(/^I select the recepient country as "([^"]*)"$/) do |recipientCountry|
  sleep 3
  @browser.span(text: 'Send Money').click
  @browser.div(:class, 'receive-country-select').click
  @browser.span(text: "#{recipientCountry}").click
end
And(/^I select the sending country as "([^"]*)"$/) do |sendCountry|
  sleep 3
  @browser.div(:class, 'send-country-select').click
  @browser.span(text: "#{sendCountry}").click
end
And(/^I set the sending amount as "([^"]*)"$/) do |sendAmount,recipientCountry |
  sleep 3
  @browser.text_field(:name, 'sendAmount').set "#{sendAmount}"
  @browser.div(:class, 'receive-country-select').click
  @browser.span(text: "#{recipientCountry}").click
end
Then(/^It should show the amount$/) do
  sleep 3
  nprv = @browser.element(:xpath, "//*[@name='receiveAmount']").value
  puts nprv
  sleep 3
  cnum = nprv.split(',').join('').to_f
  puts cnum
  if cnum < 9850
    puts "pass"
  else
    puts "fail"
  end


end
