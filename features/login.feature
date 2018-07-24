Feature: check login feature working properly
  whether to login or not
  Scenario: login with invalid invalid username and password
    Given i am a hris user
    When i enter username "Nikhilsinghal" and  password "dsad@3010"
    Then I should get alert "Invalid Login"
