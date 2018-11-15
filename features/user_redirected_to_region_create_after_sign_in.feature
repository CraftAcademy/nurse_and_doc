@javascript
Feature: abdul rahman
    As a new user,
    If I do not have a region associated to my account,
    I would like to be able to create a region after signing up.

     Background: 
        Given I am on the landing page 
        And I click on "Logout" 

    Scenario: Create region after signing up
        Then I click on "Sign up"
        Then I fill in "Email" with "zak@test.com"
        And I fill in "Password" with "willywonka"
        And I fill in "Password confirmation" with "willywonka"
        And I click on "Sign up"
        And I fill in "Region" with "Cambodia"
        And I click on "Submit"
        Then I should be on the landing page

        