@javascript
Feature: User has to login to see content of website
    As a visitor,
    In order to see content,
    I need to be logged in.

    Background:
        Given the following registered RSC exist
            | email           | password   |
            | email@email.com | mypassword |
        And I am on the login page 

    Scenario: User has successfully login and can see content of website
        Given I am on the login page 
        And I fill in "Email" with "email@email.com"
        And I fill in "password" with "mypassword"
        And I click on "Log in"
        Then I should be on the landing page
       