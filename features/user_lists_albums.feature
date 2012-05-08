Feature: User lists albums
  As a user
  I should be able to list the albums I have created

  Scenario: User lists his created albums
    Given I am logged in as "john@doe.com" with password "s3cr3t"
    And the following albums created by "john@doe.com"
      | Title     | Year | Artist             |
      | T.N.T.    | 1975 | ACDC               |
      | Aftermath | 1966 | The Rolling Stones |
    And I click on "Albums"
    Then I should see "T.N.T"
    And I should see "ACDC"
    And I should see "Aftermath"
    And I should see "The Rolling Stones"
