@javascript

Feature: RSC creates a new rsc user
    As an RSC,
    In order to have a multiple RSC users in a region,
    I would like to add more RSCs to manage assignments by using their email address

    Background:
        Given I am on the landing page
        And I click on "Create RSC Account" within the "#sidebar" section

    Scenario: RSC can sucessfully add another RSC user to access the platform
        Given I fill in "Email" with "example@example.com"
        And I click on "Create account"
        Then I should see the message "RSC user example@example.com created. Currently logged in as mystring@me.com."
        And I wait 1 seconds
        Then "example@example.com" should receive an email
        And I should see "Currently logged in as mystring@me.com."
        And the invited user should belong to the same region as the inviter

    Scenario: RSC unsucessfully create another RSC user with invalid email or password
        Given I fill in "Email" with "new_rsc"
        And I click on "Create account"
        Then I should see the message "Email is invalid"

    Scenario: RSC logs out and try to log in with an incorrect email
        Given I click on "X"
        And I click on "Logout"
        Then I should see "Log in" 
        And I fill in "Email" with "wrong@email.com"
        And I fill in "Password" with "password"
        And I click on "Log in"
        Then I should see the message "Invalid email or password"

    Scenario: RSC logs out and try to log in with an the incorrect password
        Given I click on "X"
        And I click on "Logout"
        Then I should see "Log in" 
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "pass"
        And I click on "Log in"
        Then I should see the message "Invalid email or password"



