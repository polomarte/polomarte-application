Feature: Projects registration
  In order to control my projects
  As a visitor
  I want to be able to manage the projects registration

  Scenario: Project List
    Given I have projects named School, Church
    When I visit the list of projects
    Then I should see "School"
    And I should see "Church"


  Scenario: Creating a new valid project
    Given I visit the new project page
    When I fill the new project form with "Foobar" as name
    And click on the "Salvar projeto" button
    Then the number of existent projects should be increased by one
    Then page should have notice message "Project was successfully created."

