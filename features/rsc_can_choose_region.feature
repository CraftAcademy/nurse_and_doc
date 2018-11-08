@javascript 
Feature: Rsc can choose region during signup process
    As a User
    In order to belong to a region
    I would like to be able to select a region on registration

    Background:
        Given the following regions exist
            | name      |  
            | stockholm |
            | uppsala   |
        Given the following registered RSC exist
            | email           | password   |
            | email@email.com | mypassword |
        Then stop
        And I click on "Logout" 
        
        Scenario: user choose region while signing up
            And I am on the landing page 
            Then I fill in "Email" with "newrsc@email.com"
            And I fill in "Password" with "password"
            And I fill in "Password Confirmation" with "password"
            And I select a region option
            And I click on "Create account"
            Then I should see the message "RSC user newrsc@email.com created within Stockholm region."

 
    