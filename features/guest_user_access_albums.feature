Feature: Guest user tries access albums
  In order to let the world now what the application looks like
  As a guest user
  I should be able to see the list of albums

  Background:
    Given 5 albums

  Scenario: Guest user tries to access the albums section
    Given I am not signed in
    And I visit the "home" page
    And I click on "Albums"
    Then I should see a list of 5 albums
