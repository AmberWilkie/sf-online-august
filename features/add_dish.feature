Feature: As a restaurant Owner
  in order to sell food
  I need to be able to add one or more dishes to my menus.

Background:
  Given I am logged in as a restaurant owner
  And I have the following menus:
    | title  |
    | Lunch  |
    | Dinner |

Scenario: I create a dish and put it on a menu
  Given I am on the "Create Dish" page
  Then I should see:
    | content |
    | Menu    |
    | Lunch   |
  When I fill in:
    | element          | content              |
    | Dish Name        | Pizza                |
    | Dish description | Delicious pizza      |
    | Price            | 7000kr               |
  And I check the "Lunch" box
  When I click the "Add a Dish" button
  Then I should see "Pizza"
  And I should see "Lunch"

Scenario: I can only add dishes to my own menus
  Given the following owners exist:
    | name | email          |
    | Kiki | kiki@owner.com |
  And "Kiki" has a menu "Gross Menu"
  And I already have a restaurant
  When I am on the "Create Dish" page
  Then I should see:
    | content |
    | Menu    |
    | Lunch   |
  And I should not see "Gross Menu"
