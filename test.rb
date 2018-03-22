  load File.join(File.dirname(__FILE__), "/support/env.rb")
  load File.join(File.dirname(__FILE__), "/support/browser.rb")
  load File.join(File.dirname(__FILE__), "/support/url.rb")
  begin
    @browser.goto $dashboard
    @browser.text_field(:name, 'login_email').set $email
    @browser.text_field(:name, 'login_password').set $password
    @browser.button(class: 'btn_large btn-login').click
      sleep 5
      @browser.span(text: 'Send Money').click
      @browser.text_field(:name, 'sendAmount').set $cash
      sleep 5
      @browser.div(:class, 'receive-country-select').click
      @browser.span(text: 'AUD').click
      @browser.text_field(:name, 'sendAmount').set $cash
      sleep 5
      @browser.button(class: 'ui button btn_large btn-login').click
      sleep 5
      puts "at user"
      @browser.button(class: 'ui small button').click
      puts "at recepient"
      @browser.select_list(name: 'select_recipient').wait_until_present
      @browser.select_list(:name, "select_recipient").select_value("8079488917506")
      puts "at edit"
      @browser.button(class: 'ui small button').click
      puts "at confirm"
      sleep 5
      @browser.button(class: 'ui button btn_large btn-login').click
      @browser.button(class: 'ui button btn_large btn-login').click
      sleep 5
      @browser.quit
    end
