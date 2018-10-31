@javascript

Feature: Login capabilities
    As a RSC,
    In order to access content and have ability to create other RSC users,
    I would like to be able to register to the website 


    Given the following registered RSC exist
            | email           | password   | 
            | email@email.com | mypassword |
    And the RSC user is logged in as "email@email.com"

    Scenario: RSC can sucessfully add another RSC user to access the platform
        Given I am on the landing page
        And I click on the button "add RSC user"
        And I fill in "Email" with "email@email.com"
        And I fill in "Password" with "password"
        And I click on "Create account"
        And I click on "Send"
        Then I should see "You have successfully sent an invitation."

        


