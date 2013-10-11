Feature: Projects registration
  In order to control my projects
  As a visitor
  I want to be able to manage the projects registration

  Scenario: Creating a new valid project
    Given I visit the new project page
    When I fill the new product form with Foobar as name
    And click on the 'Create' button
    Then the number of existent projects should be increased by one
    And I should be sent to the new project's page

  Scenario: Creating a project without a name