Feature: As a visitor
  in order to check out or rate restaurants
  I need to be able to register as a Customer.

Scenario: I register as a Customer
  Given there are "0" users in the system
  And I am on the "register" page
  When I fill in:
    | element                    | content          |
    | Name                       | Julie            |
    | Email                      | julie@random.com |
    | Address                    | Fjällgatan 3, Göteborg, Västa Götaland, Sverige |
    | Password                   | password         |
    | Password confirmation      | password         |
  When I click the "Register" button
  Then there should be "1" user in the system

  Scenario: Redirects to restaurant index page after registration
    Given I register as a user with username "Amber" and email "amber@random.com"
    Then I should be on the "restaurant" page
    And I should see "Amber"
