Feature: Projects visualization
  In order to see the projects
  As a visitor
  I want to be able to see the project details and tasks

  Scenario: Project List
    Given I have projects named School, Church
    When I visit the list of projects
    Then I should see "tests.messages.school"
    And I should see "tests.messages.church"

  Scenario: Show a project page
    Given I have projects named School
    And I visit the School show page
    Then I should see "tests.messages.school"


  Scenario: Show tasks on the project list
    Given I have projects named School, Church
    And School has tasks Wake up, Go to school
    When I visit the list of projects
    Then I should see "tests.messages.wake"
    And I should see "tests.messages.go_school"




