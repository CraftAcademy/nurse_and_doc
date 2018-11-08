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
        And I am on the landing page 
        And I click on "Logout" 
        
        Scenario: user choose region while signing up
            Given I click on "Sign up"
            Then I fill in "Email" with "newrsc@email.com"
            And I fill in "Password" with "password"
            And I fill in "Password confirmation" with "password"
            # Then stop
            And I select a region option "stockholm"
            And I click on "Sign up"
            # Then stop
            Then I should see the message "RSC user newrsc@email.com created within Stockholm region."

 
    