require 'page-object'
require "rspec"

class Login_page
  include PageObject


text_field(:username, :id => 'txtUserName')
text_field(:password, :id => 'txtPassword')
button(:login_button, class: 'btn pull-left', value: 'Sign In')
div(:alertdiv, :class => 'alert-error')
  def login(username,password)
    self.username=username
    self.password=password

  end

  def submit_button
    self.login_button
  end

  def assert_alert

    actual_answer=self.alertdiv
     actual_answer
      #expect(expected_answer).to eq(actual_answer)
  end
end
