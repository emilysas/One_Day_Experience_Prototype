Feature: As an Administrator
  In order to maintain the Professional and Youth Database
  As a One Day Administrator
  I want to have access to the database as a Administrator.

  Scenario: Signing in  
    Given I am on the home page
    And I fill in "Email" with "email@email.com"
    And I fill in "Password" with "password"
    When I press "Submit"
    Then I should see the Administrator page