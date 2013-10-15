Feature: Projects visualization
  In order to see the projects
  As a visitor
  I want to be able to see the project details and tasks count

  Scenario: Project List
    Given I have projects named School, Church
    When I visit the project list page
    Then I should see "tests.messages.school"
    And I should see "tests.messages.church"

  Scenario: Show a project page
    Given I have projects named School
    When I visit the School show page
    Then I should see "tests.messages.school"


  Scenario: Show tasks on the project list
    Given I have projects named School, Church
    And School has tasks named Wake up, Go to school
    When I visit the project list page
    Then I should see "tests.messages.two_tasks"

  Scenario: Show percentage of completion of project
    Given I have projects named School
    And School has tasks named Wake up, put my pants, go to school
    When I finalize Wake up, put my pants tasks
    And I visit the project list page
    Then I should see "tests.messages.percentage_completion"




