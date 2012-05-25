Feature: User edits album
  In order to fix typos and wrong information
  As a dumb user
  I should be able to edit album information

  Background:
    Given I am logged in as "chuck@norris.com" with password "k1ck4rs3"
    And the following albums created by "chuck@norris.com"
      | Title     | Year | Artist             |
      | T N T     | 1974 | ACDC               |

  Scenario: User edits an album
    Given I click on "Albums"
    And I click on "Edit"
    And I fill in "Title" with "T.N.T."
    And I fill in "Year" with "1975"
    And I fill in "Artist" with "AC/DC"
    And I click on "Update Album"
    Then I should see "T.N.T."
    And I should see "1975"
    And I should see "AC/DC"
