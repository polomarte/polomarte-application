Feature: Tasks creation
  In order to create tasks
  As a visitor
  I want to be able add tasks in the projects

  Scenario: Creating a new valid task
    Given I visit the School Project show page
    Then I should have 0 tasks
    When I fill task_description field with "Run"
    And click on the "Criar tarefa" button
    Then I should have 1 tasks

  Scenario: Creating a new task without a description
    Given I visit the School Project show page
    Then I should have 0 tasks
    When I fill task_description field with ""
    And click on the "Criar tarefa" button
    And I should have 0 tasks

  Scenario: Editing an existent task
    Given I visit task Church edit page
    And I should have 1 tasks
    When I fill task_description field with "Edited Church"
    And click on the "Salvar tarefa" button
    Then I should see "Edited Church"
    And I should have 1 tasks