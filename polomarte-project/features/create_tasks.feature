Feature: Tasks creation
  In order to create tasks
  As a visitor
  I want to be able add tasks in the projects

  Scenario: Creating a new valid task
    Given I visit the School Project edit page
    Then I should have 0 tasks
    When I fill project_tasks_attributes_0_description field with "Run"
    And click on the "Salvar projeto" button
    Then I should have 1 tasks
    And I should see "Project was successfully updated."