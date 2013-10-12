Feature: Tasks creation
  In order to create tasks
  As a visitor
  I want to be able add tasks in the projects

  Scenario: Creating a new valid task
    Given I visit the School Project edit page
    Then I should have 0 tasks
    When I fill task_description field with "Run"
    And click on the "Salvar tarefa" button
    Then I should have 1 tasks
    And I should see "Task was successfully created."