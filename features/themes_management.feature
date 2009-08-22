Feature: Observe themes

  In order to see  list of themes
  As a registered user
  I want to see a table with themes

  Scenario: Themes list
    Given I have the following themes
        | title    | author  | published_year| profession_name | code_name| grade_name          | area       |
        | "Science"| Nick Me | 2000          | computer science| 80.00.13 | Candidate of science| informatics|
        | "Lessons"| John Him| 1991          | food science    | 00.01.51 | Food master         | cookery    |
    When I go to list of themes
    Then I should see "Science"
    And I should see "Lessons"

  Scenario: Themes list on homepage
    Given I have the following themes
        | title    | author  | published_year| profession_name | code_name| grade_name          | area       |
        | "Science"| Nick Me | 2000          | computer science| 80.00.13 | Candidate of science| informatics|
        | "Lessons"| John Him| 1991          | food science    | 00.01.51 | Food master         | cookery    |
    When I go to the homepage
    Then I should see "Science"
    And I should see "Lessons"

