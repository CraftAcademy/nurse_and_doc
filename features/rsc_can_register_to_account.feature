@javascript

Feature: RSC creates a new rsc user
    As an RSC,
    In order to have a multiple RSC users in a region,
    I would like to add more RSCs to manage assignments by using their email address

    Background:
        Given the following registered RSC exist
            | email           | password   |
            | email@email.com | mypassword |

        And the RSC user is logged in as "email@email.com"
        And I am on the landing page
        And I click on "Create RSC Account" within the "#sidebar" section

    Scenario: RSC can sucessfully add another RSC user to access the platform
        Given I fill in "Email" with "newrsc@email.com"
        And I click on "Create account"
        Then I should see the message "RSC user newrsc@email.com created, currently logged in as email@email.com."

    Scenario: RSC unsucessfully create another RSC user with invalid email or password
        Given I fill in "Email" with "new_rsc"
        And I click on "Create account"
        Then I should see the message "Invalid Email"

    Scenario: RSC logs out and try to log in with an incorrect email
        Given I click on "Cancel"
        And I click on "Logout"
        Then I should be on the landing page
        And I click on "Login"
        And I fill in "Email" with "wrong@email.com"
        And I fill in "Password" with "password"
        And I click on "Log in"
        Then I should see the message "Invalid email or password"

    Scenario: RSC logs out and try to log in with an the incorrect password
        Given I click on "Cancel"
        And I click on "Logout"
        Then I should be on the landing page
        And I click on "Login"
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "pass"
        And I click on "Log in"
        Then I should see the message "Invalid email or password"



