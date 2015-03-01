Feature: As an Administrator
  In order to maintain the Professional Profiles
  As a One Day Administrator
  I want to have access to the database to maintain the details of Professionals.

  Scenario: Editing a Professional Profile
    Given I am on the Administrator home page
    And I select a Professional Profile
    When I click "Edit"
    Then I should be able to edit their details

  Scenario: New Professional Profile alert
    Given I am on the Administrator home page
    And I see alert "New Profile registered"
    When I click "See message"
    Then I should be able to see the new messages

  Scenario: Replying to new Professionals
    Given I am on the Administrator home page
    And I have read the new Professional registration
    And I want to send a message to the new Professional
    When I click "Send message"
    And I compose a message
    Then I should be able to send the message