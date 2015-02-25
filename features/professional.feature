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
    When I have entered my name and email in their fields
    Then I have registered my contact details.

Feature: Professional creating a profile.
  In order to allow my details to be viewed by potential Youths
  As a registered professional
  I want to create a Professional Profile on One Day.

  Scenario: Creating my profile.
    Given I have registered my interest
    When I click on "Create my profile"
    Then I should see a questionnaire.

  Scenario: Completing the Profession field.
    Given I am on the questionnaire 
    And I have entered my Job position and selected my Professional Sector from the drop down selection
    When I press save
    Then I should be able to save my entries. 

  Scenario: Completing the Academic field.
    Given I am on the questionnaire 
    And I have entered my Academic background and how it is related to my job
    When I press save
    Then I should be able to save my entries.

  Scenario: Completing the mentee experience
    Given I am on the questionnaire 
    And I have entered details of how a mentee can make the most of the One Day experience with me, what I can contribute and how many weekly hours I can offer
    When I press save
    Then I should be able to save my entries.

  Scenario: Completing my previous experience
    Given I am on the questionnaire  
    And I have entered details of any previous experiences I have had similar to One Day and my motivation to become a mentor
    When I press save
    Then I should be able to save my entries.

  Scenario: Uploading a profile picture
    Given I am on the questionnaire  
    And I have entered a profile picture
    When I press save
    Then I should be able to save my profile picture.