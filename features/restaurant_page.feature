Feature: As a restaurant Owner
  in order to sell food
  I need to be able to display information on my Restaurant page.

Background:
  Given I am logged in as a restaurant owner

Scenario: I create a restaurant
  Given I am on the "create restaurant" page
  When I fill in:
    | element     | content              |
    | Name        | Awesome restaurant   |
    | Description | Good food            |
    | Street      | Holtermansgatan 17d  |
    | Zipcode     | 41235                |
    | Town        | Göteborg             |
  And I click the "Create" button
  And I should see "here is the show"
  And I should see "Awesome restaurant"

Scenario: I attempt to create a restaurant with no address
  Given I am on the "create restaurant" page
  When I fill in:
    | element     | content              |
    | Name        | Awesome restaurant   |
    | Description | Good food            |
    | Street      |                      |
    | Zipcode     | 41235                |
    | Town        | Göteborg             |
  And I click the "Create" button
  And I should see "Street can't be blank"

Scenario: I attempt to access new restaurant page without being logged in
  Given I am not logged in
  When I am on the "create restaurant" page
  Then I should be on the "index" page
  And I should see "You are not authorized to access this page"

Scenario: I try to create a second restaurant
  And I already have a restaurant
  And I am on the "create restaurant" page
  Then I should be on the "index" page
  And I should see "You already have a restaurant, how many do you need?"

Scenario: I create a menu for my restaurant
  Given I already have a restaurant
  And I am on the "add menu" page
  When I fill in "title" with "Lunch Menu"
  And I click the "Create" button
  When I am on my restaurant page
  Then I should see "Lunch Menu"

Scenario: My menu doesn't show up on your restaurant
  Given the following owners exist:
    | name | email          |
    | Kiki | kiki@owner.com |
  And "Kiki" has a restaurant
  And I already have a restaurant
  When I create a menu "Super Duper Menu"
  And I visit the restaurant page for "Kiki"
  Then I should not see "Super Duper Menu"
