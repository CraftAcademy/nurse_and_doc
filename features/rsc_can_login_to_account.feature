@javascript

Feature: RSC creates a new rsc user
    As a registered RSC,
    In order to access content and create other RSC users,
    I would like to be able to login to the website.

    Background:
        Given the following registered RSC exist
            | email           | password   | password_confirmation |
            | email@email.com | mypassword | mypassword |

    Scenario: User Can Successfully Login
        Given I am on the landing page 
        And I click on "Login/Register"
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I click on "Log in"
        Then I should see "Signed in successfully."
        