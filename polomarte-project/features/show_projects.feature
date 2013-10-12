Feature: Projects visualization
  In order to see the projects
  As a visitor
  I want to be able to see the project details and tasks

  Scenario: Project List
    Given I have projects named School, Church
    When I visit the list of projects
    Then I should see "School"
    And I should see "Church"

  Scenario: Show a project page
    Given I have projects named School Project
    And I visit the School Project show page
    Then I should see "School Project"


  Scenario: Show tasks on the project list
    Given I have projects named School Project, Church
    And School Project has tasks Wake up, Go to school
    When I visit the list of projects
    Then I should see "Wake up"
    And I should see "Go to school"




