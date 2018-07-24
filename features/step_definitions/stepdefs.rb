require 'selenium-webdriver'
require './pages/loginpage'


Given("i am a hris user") do
  @browser =Selenium::WebDriver.for :chrome
  @browser.navigate.to "https://hris.qainfotech.com"
  @obj=Login_page.new @browser
end

When("i enter username {string} and  password {string}") do |username, password|
@obj.login(username,password)
@obj.submit_button
end

Then("I should get alert {string}") do |expected_answer|

expect(@obj.assert_alert).to eq(expected_answer)
end
