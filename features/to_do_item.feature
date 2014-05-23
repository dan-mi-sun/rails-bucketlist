Feature: To Do Items

  Background: 
    Given an exciting destination called "Wales"

  @wip  @javascript
  Scenario: Add a to do item
    Given I am on the destinations index page
    When I select "Add To Do Item"
     And I fill in the description of the todo item
     And I submit the todo form
    Then I should see my new todo item listed as activity under "Wales" 

