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
            | profession |
            | intern     |
        And I am on the landing page 
        And I click on "Logout" 

    Scenario: User has successfully login and can see content of website
        Given I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I click on "Log in"
        Then I should see "intern"
       
    Scenario: User tries to access content without logging in
       Given I am on the landing page
       Then I should see "Log in"
       And I should not see "intern"
       Then I should see "You need to sign in or sign up before continuing."

    Scenario: User can switch between signup and login
        Given I am on the landing page 
        Then I should see "Log in"
        Then I should see "EMAIL"
        And I should see "PASSWORD" 
        Then I click on "Sign up"
        And I should see "EMAIL"
        And I should see "PASSWORD"       
        And I should see "PASSWORD CONFIRMATION"
        Then I click on "Log in"
       
   

