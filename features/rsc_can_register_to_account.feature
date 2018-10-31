@javascript

Feature: Login capabilities
    As a RSC,
    In order to access content,
    I would like to be able to register to the website

    Scenario: RSC can sucessfully register to rsc management platform
        Given I am on the landing page
        And I click on "Sign up"
        Then I should be on the signup page
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I fill in "Password confirmation" with "mypassword"
        And I click on "Sign up"
        Then I should see "You have signed up successfully."

    Scenario: Sad path RSC cannot sucessfully register to rsc management platform - already used email
        Given I am on the landing page
        When I click on the link "Sign up"
        And I fill in the "Email" with "jorge@kalle.com"
        And I fill in the "Password" with "password"
        And I click on "Sign up"
        Then I should see the message "Invalid Email"
        
    Scenario: Sad path RSC cannot sucessfully register to rsc management platform - password too short
        Given I am on the landing page
        When I click on the link "Sign up"
        And I fill in the "Email" with "jorge@kalle.com"
        And I fill in the "Password" with "psw"
        And I click on "Sign up"
        Then I should see the message "Password needs to be minimum 6 characters long"