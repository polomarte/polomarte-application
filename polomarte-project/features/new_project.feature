Feature: Products registration
  In order to control my products
  As a system's user
  I want to be able to manage the products registration

  Scenario: Creating a new product
    Given I visit the new product page
    When I fill the new product form with Foobar as description and 10.00 as the price
    And click on the 'Create' button
    Then the number of existent products should be increased by one
    And I should be sent to the new product's page