Feature: Managing areas

  In order to manage areas
  As a manager
  I want to see a table with areas, add new areas, edit and delete them

  Scenario: Area list
    Given  I have area titled informatics
    When I go to the list of areas
    Then I should see "informatics"

  Scenario: add valid Area
    Given I have no areas
    And I am on the list of areas
    When i follow New Area
    And i fill in "Title" with "cookery"
    And i press "Create"
    And i should see "New area created"
    And i should see "cookery"
    And i should have 1 area

