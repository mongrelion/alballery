Feature: User deletes album
  In order to keep my album list clean
  And to keep myself away from public shame
  As an user
  I should be able to delete albums
  So that when I show my list to my friends
  They can't tell I listen to Britney Spears, Shakira and all those artists

  Scenario: User deletes an album
    Given I am logged in as "john@doe.com" with password "s3cr3t"
    And the following albums created by "john@doe.com"
      | Title    | Year | Artist         |
      | She Wolf | 2009 | Shakira        |
    And I click on "Albums"
    And I click on "Destroy"
    Then I should see "Album was successfully destroyed."
    And I should not see "She Wolf"
