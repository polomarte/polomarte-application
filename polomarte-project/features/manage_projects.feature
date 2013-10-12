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
    Then I should have 0 projects
    When I fill the new project form with "Foobar" as name
    And click on the "Salvar projeto" button
    Then I should have 1 projects
    And I should see "Project was successfully created."


  Scenario: Creating a new project without a name
    Given I visit the new project page
    When I fill the new project form with "" as name
    And click on the "Salvar projeto" button
    Then I should have 0 projects
    And I should see "Nome não pode ficar vazio"


  Scenario: Show a project page
    Given I have projects named School Project
    And I visit the School Project show page
    Then I should see "School Project"


  Scenario: Show tasks on the project list
    And School Project has tasks Wake up, Go to school
    When I visit the list of projects
    Then I should see "Wake up"
    And I should see "Go to school"




