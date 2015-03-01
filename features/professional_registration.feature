Feature: Professional interested in One Day
  In order to provide employment opportunities
  As an altruistic professional
  I want to register with One Day.

  Scenario: Navigate to registration page
    Given I am on the homepage
    When I press "Register your details"
    Then I should be on the registration page.

  Scenario: Registering contact details
    Given I am on the registration page
    And I fill in "First name" with "name"
    And I fill in "Last name" with "Surname"
    And I fill in "Email" with "email@email.com"
    When I click "Submit"
    Then I should see "Thank you for registering your interest, a member of our team will contact you shortly.