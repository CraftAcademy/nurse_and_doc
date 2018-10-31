@javascript

Feature: Login capabilities
    As a RSC,
    In order to access content,
    I would like to be able to register to the website

    Scenario: RSC can sucessfully register to rsc management platform
        Given I visit the site
        And I click on "Sign up"
        Then I should be on the signup page
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "mypassword"
        And I fill in "Password confirmation" with "mypassword"
        And I click on "Sign up"
        Then I should see "You have signed up successfully."