begin
  require 'watir'
  require 'selenium-webdriver'
  browser = Watir::Browser.new :chrome
  begin
    url = "file:///Users/ub/Documents/PortableDocumentFile/html/Forms%20with%20input%20elements.htm"
    browser.goto url
    sleep 1
    browser.checkbox(value: 'cars').set
    browser.close
  end
end