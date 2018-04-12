begin
  require 'watir'
  require 'selenium-webdriver'
  @browser = Watir::Browser.new :chrome
  begin
    @browser.window.maximize
    @browser.goto 'http://143.95.39.8/~remitasi/dashboard/profile'
    @browser.text_field(:name, 'login_email').set 'ravi@remitasia.com'
    @browser.text_field(:name, 'login_password').set 'ravi1234'
    @browser.button(class: 'btn_large btn-login').click
    sleep 3
    @browser.goto 'http://143.95.39.8/~remitasi/dashboard/profile'
    sleep 5
    @browser.button(class:'tiny button edit'). click

    @browser.text_field(:name,'cust_fname').set "rav"
    @browser.text_field(:name,'cust_lname').set "rav"
    @browser.text_field(:name,'cust_email').set "rav"
    @browser.select_list(:name,'cust_zip').select_value("+93")
    @browser.text_field(:name,'cust_phone').set "9898989898989"
=begin
    @browser.text_field(name: 'cust_dob').send_keys '05/20/2012'
=end
    @browser.select_list(:name,'cust_country').select_value("AF")
    @browser.textarea(:name,'cust_city').set "Kathmadnu"
    @browser.text_field(:name,'cust_addr1').set "Kathmadnu"
    sleep 5
  end
end
