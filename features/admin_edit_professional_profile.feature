Feature: As an Administrator
  In order to maintain the Professional Profiles
  As a One Day Administrator
  I want to have access to the database to maintain the details of Professionals.

  Scenario: Editing a Professional Profile
    Given I am on the Super User page
    And I select a Professional Profile
    When I click "Edit"
    Then I should be able to edit their details