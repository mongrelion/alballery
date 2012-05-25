Feature: User creates albums
  In order to create my personal albums collection
  As a user
  I should be able to create albums

  Background:
    Given I am logged in as "john@doe.com" with password "s3cr3t"

  Scenario: User tries to create an album without enough information
    Given I click on "Albums"
    And I click on "New"
    And I click on "Create"
    Then I should see "Title can't be blank"
    And I should see "Year can't be blank"
    And I should see "Artist can't be blank"
    And I should see "Year is not a number"

  Scenario: User creates an album given the proper information
    Given I click on "Albums"
    And I click on "New"
    And I click on "Create"
    And I fill in "Title" with "I am"
    And I fill in "Year" with "1979"
    And I fill in "Artist" with "Earth, Wind and Fire"
    And I attach the file "album-cover.jpg" to the field "Cover"
    And I click on "Create"
    Then I should see "Album was successfully created."
    And I should see "I am"
    And I should see "Earth, Wind and Fire"
