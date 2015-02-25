Feature: As a Super Administrator
  In order to maintain and add staff as Administrators
  As a One Day Super Administrator
  I want to have access to the website to maintain the list of Administrators.

  Scenario: Signing in  
    Given I am on the home page
    And I have entered my details in the "Sign in" field
    When I press submit
    Then I should see the Super Administrator page

Feature: Super Administrator access
  In order to maintain and update the website
  As a One Day Super Administrator
  I want to have access to the website as a Super Administrator

  Scenario: Adding a Super Administrator
    Given I am on the Super User page
    When I click on "Add a Super Administrator"
    Then I should see the form to add details of the member of staff

  Scenario: Deleting a Super Administrator
    Given I am on the Super User page
    And I select a Super Administrator from a list
    When I click on "Remove Super Administrator"
    Then I should see "Super Administrator has been removed"

  Scenario: Adding an Administrator
    Given I am on the Super User page
    When I click on "Add an Administrator"
    Then I should see the form to add details of the member of staff

  Scenario: Deleting an Administrator
    Given I am on the Super User page
    And I select an Administrator from a list
    When I click on "Remove Administrator"
    Then I should see "Administrator has been removed"

  Scenario: Editing a Professional Profile
    Given I am on the Super User page
    And I select a Professional Profile
    When I click "Edit"
    Then I should be able to edit their details

  Scenario: Editing a Mentee Profile
    Given I am on the Super User page
    And I select a Mentee Profile
    When I click "Edit"
    Then I should be able to edit their details
