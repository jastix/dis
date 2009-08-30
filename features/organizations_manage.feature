Feature: Managing organizations

  In order to manage organizations
  As a manager
  I want to see a table with organizations, add new organization, edit and delete them

  Scenario: Organization list
    Given  I have organization titled "Me and co"
    When I go to the list of organizations
    Then I should see "Me and co"

  Scenario: add valid Organization
    Given I have no organizations
    And I am on the list of organizations
    When i follow New Organization
    And i fill in "Title" with "Laboratory"
    And i press "Create"
    And i should see "New organization created"
    And i should see "Laboratory"
    And i should have 1 organization

  Scenario: area title should not be blank
    Given I have no organizations
    And I am on the list of organizations
    When i follow New Organization
    And i fill in "Title" with ""
    And i press "Create"
    And i should see "Title can't be blank"
    And i should have 0 organization

  Scenario: area title should be more than 2 symbols
    Given I have no organizations
    And I am on the list of organizations
    When i follow New Organization
    And i fill in "Title" with "la"
    And i press "Create"
    And i should see "Title is too short"
    And i should have 0 organization

  Scenario: area title should be start with letters
    Given I have no organizations
    And I am on the list of organizations
    When i follow New Organization
    And i fill in "Title" with "2la"
    And i press "Create"
    And i should see "Title is invalid"
    And i should have 0 organization

