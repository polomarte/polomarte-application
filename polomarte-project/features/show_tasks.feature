Feature: Task visualization
  In order to see the tasks of projects
  As a visitor
  I want to be able to see the project details and tasks

  Scenario: Show tasks on the project show page
    Given I have projects named School, Church
    And School has tasks Wake up, Go to school
    When I visit the School show page
    Then I should see "tests.messages.wake"
    And I should see "tests.messages.go_school"




