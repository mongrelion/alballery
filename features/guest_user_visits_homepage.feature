Feature: Guest user visits the home page
  In order to know what Alballery is all about
  As a guest user
  I should be able to visit the home page

  Scenario: Guest user visits the home page
    Given I visit the "home" page
    Then I should see "Create and manage your music albums."

  Scenario: Guest user sees sign up link
    Given I visit the "home" page
    Then I should see "Sign up"

  Scenario: Guest user sees sign in link
    Given I visit the "home" page
    Then I should see "Sign in"
