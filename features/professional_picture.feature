Feature: Profile photo upload
  In order to create Professional Profile
  As a Professional user
  I want to be able to upload an image file with my photo

  Scenario: Uploading a valid image file
    Given I have been accepted as a Mentor
    And I am on my profile edit page
    When I follow "Upload a photo"
    And I attach a "thumbnail" image to "image_source_file"
    And I press "Upload photo"
    Then I should see my Profile picture

  Scenario: Uploading a malformed image file
    Given I have been accepted as a Mentor
    And I am on my profile edit page
    When I follow "Upload a photo"
    And I attach a malformed "thumbnail" image to "image_source_file"
    Then I should see an error message
    And I should see the file upload page again

  Scenario: Changing an image file
    Given I have uploaded a profile picture
    And I want to change my picture
    When follow "Upload a photo"
    And I attach a "thumbnail" image to "image_source_file"
    And I press "Upload photo"
    Then I should see my Profile picture
