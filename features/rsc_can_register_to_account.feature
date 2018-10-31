@javascript

Feature: Login capabilities
    As a RSC,
    In order to access content and have ability to create other RSC users,
    I would like to be able to register to the website 

    Background: 
    Given the following registered RSC exist
            | email           | password   | 
            | email@email.com | mypassword |
    And the RSC user is logged in as "email@email.com"

    Scenario: RSC can sucessfully add another RSC user to access the platform
        Given I am on the create RSC page
        And I fill in "Email" with "newrsc@email.com"
        And I click on "Create RSC account"
        Then I should see "RSC user newrsc@email.com created"

        


