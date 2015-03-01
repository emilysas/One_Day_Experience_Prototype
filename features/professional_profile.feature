Feature: Creating a Professional Profile
  In order to create a Professional Profile
  As a Professional user
  I want to be able to create a profile
  
  Scenario: Creating my profile
    Given I have registered my interest
    And I fill in "Professional Sector" with "Profession"
    And I fill in "Job Position" with "Job Position"
    And I fill in "Academic Qualifications" with "Qualifications"
    And I fill in "Are your Academic qualifications related to your job?" with "some text"
    And I fill in "How can a mentee make the most of their One Day experience with you" with "some text"
    And I fill in "What can you contribute?" with "Some text"
    And I fill in "How many hours can you offer each week?" with "some text"
    And I fill in "Have you had any similar experiences to One Day?" with "some text"
    And I fill in "What is your motivation to become a mentor?" with "some text"
    When I click on "Create your profile"
    Then page should have notice "Thanks! You are now part of our passionate network, check your Bio here!".

  Scenario: Editing my profile
    Given I have created my Profile
    And I want to change a field
    When I follow "Edit my Profile"
    And I fill in "Job Position" with "new Position"
    And I click on "Update Profile"
    Then I should see "Your Profile has been updated"

  Scenario: Deleting my profile
    Given I have created my Profile
    And I want to delete my Profile
    When I follow "Delete my Profile"
    And I click on "Delete Profile"
    Then I should see "Your Profile has been deleted"