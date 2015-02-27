  Feature: As a Super Administrator
  In order to maintain and add staff as Administrators
  As a One Day Administrator
  I want to have access to the website to maintain the list of Administrators.

  Scenario: Adding an Administrator
    Given I am on the Administrator page
    When I follow "Add an Administrator"
    And I fill in "First name" with "name"
    And I fill in "Last name" with "Surname"
    And I fill in "Email" with "email@email.com"
    And I press "Create Administrator"
    Then I should see "New Administrator created"

  Scenario: Deleting an Administrator
    Given I am on the Administrator page
    When I follow "Remove an Administrator"
    And I select an Administrator from a list
    When I click on "Remove Administrator"
    Then I should see "Administrator has been removed"