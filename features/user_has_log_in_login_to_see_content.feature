@javascript
Feature: User has to login to see content of website
    As a visitor,
    In order to see content,
    I need to be logged in.

    Background:
        Given the following registered RSC exist
            | email           | password   |
            | email@email.com | mypassword |
        And the following jobs exist in the database
            | name     |
            | intern   |
        And I am on the landing page 
        # And I click on "Logout" 

    Scenario: User has successfully login and can see content of website
        Given I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I click on "Log in"
        Then I should see "intern"
       