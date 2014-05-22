Feature: Add a Destination

  @wip @javascript
  Scenario: A traveller adds a destination to thier bucketlist
    Given I am on the destinations index page
    When I add a new destination 
      And complete the form with valid information
      And I submit the form
    Then I should see my new destination
