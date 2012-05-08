Feature: Guest user tries access albums
  In order to keep users' albums private
  As a guest user
  I should be redirected to the sign in page
  So that I can not see other people's albums.

  Scenario: Guest user tries to access the albums section
    Given I am not signed in
    And I visit the "home" page
    And I click on "Albums"
    Then I should see "You need to sign in or sign up before continuing."
