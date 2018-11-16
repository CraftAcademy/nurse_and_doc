@javascript
Feature: User creates region after sign up
    As a new user,
    If I do not have a region associated to my account,
    I would like to be able to create a region after signing up.

     Background: 
        Given I am on the landing page 
        And I click on "Logout" 
        Then I click on "Sign up"
        Then I fill in "Email" with "zak@test.com"
        And I fill in "Password" with "willywonka"
        And I fill in "Password confirmation" with "willywonka"
        And I click on "Sign up"

    Scenario: Create region after signing up
        Then I should see "New Region"
        And I fill in "Name" with "Cambodia"
        And I click on "Submit"
        And I wait 1 seconds
        Then my region should be "Cambodia"
        And I should be on the landing page
        And I should see "Welcome to Nurse & Doc!"